'use strict'

intranet
.directive 'fileUpload', (fileService) ->
  templateUrl:  'views/file-upload-service.html'
  require: '?ngModel',
  link: (scope,elements,attrs, ngModel) ->
    scope.uploadMine = (element) ->
      fileInstance = fileService.createFile(element.files[0])
      fileInstance.readFile()
      updateWithFileNameLabel(fileInstance.getName())
      ngModel.$setViewValue(fileInstance)
      scope.$apply();


updateWithFileNameLabel = (name) ->
  $('#file_upload_nameFile').text(name)
