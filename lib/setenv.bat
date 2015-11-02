set pathPrefix=

if not "%1"=="" (
	set pathPrefix=%1
)

set allLibs=%pathPrefix%\math\Line.mb
set allLibs=%allLibs% %pathPrefix%\math\Matrix.mb
set allLibs=%allLibs% %pathPrefix%\math\Point.mb
set allLibs=%allLibs% %pathPrefix%\math\Util.mb
set allLibs=%allLibs% %pathPrefix%\math\Vector.mb
set allLibs=%allLibs% %pathPrefix%\table\GeoTools.mb
set allLibs=%allLibs% %pathPrefix%\table\EncodingTools.mb
set allLibs=%allLibs% %pathPrefix%\table\DictionaryTools.mb
set allLibs=%allLibs% %pathPrefix%\table\TableTools.mb
set allLibs=%allLibs% %pathPrefix%\table\ObjectTools.mb
set allLibs=%allLibs% %pathPrefix%\util\Array.mb
set allLibs=%allLibs% %pathPrefix%\util\Config.mb
set allLibs=%allLibs% %pathPrefix%\util\File.mb
set allLibs=%allLibs% %pathPrefix%\util\GuiTools.mb
set allLibs=%allLibs% %pathPrefix%\util\MapTools.mb
set allLibs=%allLibs% %pathPrefix%\util\HashTable.mb
set allLibs=%allLibs% %pathPrefix%\util\IniTools.mb
set allLibs=%allLibs% %pathPrefix%\util\List.mb
set allLibs=%allLibs% %pathPrefix%\util\Logger.mb
set allLibs=%allLibs% %pathPrefix%\util\PathTools.mb
set allLibs=%allLibs% %pathPrefix%\util\System.mb
set allLibs=%allLibs% %pathPrefix%\util\URL.mb
set allLibs=%allLibs% %pathPrefix%\util\Util.mb
set allLibs=%allLibs% %pathPrefix%\util\Date.mb
set allLibs=%allLibs% %pathPrefix%\util\Bitwise.mb
set allLibs=%allLibs% %pathPrefix%\util\Registry.mb
set allLibs=%allLibs% %pathPrefix%\util\Demo.mb
