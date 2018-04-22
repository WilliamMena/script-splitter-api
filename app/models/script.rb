class Script < ApplicationRecord
  belongs_to :user
  has_many :captions

  def setCaptionsFromText(script)

    text = script.text
    limit = script.characters
    currentCaptionCount = 0

    textArray = text.split(" ")
    # after the body of text is split into an array I need to create a new array that will contain all of the completed sentenses
    captionsArray = [""]
    #I know need to create a function that will import text into the array as long as the string is under the specified character constraint

    textArray.each_with_index {|string, index|
      if (captionsArray[currentCaptionCount].length + string.length)  <= limit
        captionsArray[currentCaptionCount] += "#{textArray[index]} "
      else
        currentCaptionCount += 1
        captionsArray.push("#{textArray[index]} ")
      end
    }

    captionsArray.each {|caption|
      script.captions.create(text: caption, completed: false, timecode: Time.new(000))
    }
  end


  def destoryAllCaptions
    self.captions.each {|caption|
      caption.destroy
    }
  end
end
