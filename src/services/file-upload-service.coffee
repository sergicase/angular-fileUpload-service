'use strict'

class File
  reader = new FileReader()
  constructor: (@file,@name=null,@type=null,@size=null,@source=null) ->
    reader.readAsDataURL(@file)
    @name = @file.name
    @size = @file.size
    @type = @file.type
  readFile: ->
    fileInstance = this
    reader.onloadend = () ->
      fileInstance.setSource(reader.result)
  setSource: (source) ->
    @source = source
  setName: (name) ->
    @name = name
  setType: (type) ->
    @type = type
  setSize: (size) ->
    @size = size
  getSource: ->
    @source
  getName: ->
    @name
  getType: ->
    @type
  getSize: ->
    @size


intranet
.service 'fileService', () ->
  @createFile = (file,name=null,type=null,size=null) ->
    fileInstance = new File(file)
    return fileInstance
  return null













