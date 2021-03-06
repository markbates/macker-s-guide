/* Ruby 1.8.4 syntax contributed by Erik Peterson */
dp.sh.Brushes.Fs = function()
{
  var keywords =	'alias and BEGIN begin break case class def define_method defined do each else elsif ' +
					'END end ensure false for if in module new next nil not or raise redo rescue retry return ' +
					'self super then throw true undef unless until when while yield';

  var builtins =	'Array Bignum Binding Class Continuation Dir Exception FalseClass File::Stat File Fixnum Fload ' +
					'Hash Integer IO MatchData Method Module NilClass Numeric Object Proc Range Regexp String Struct::TMS Symbol ' +
					'ThreadGroup Thread Time TrueClass'

	this.regexList = [
    // { regex: dp.sh.RegexLib.SingleLinePerlComments,      css: 'comment' }, // one line comments
    //     // { regex: new RegExp('^=begin.*=end$', 'giym'),    css: 'comment'},
    //     { regex: new RegExp('^=begin', 'gm'),      css: 'comment' }, // one line comments
    //     { regex: new RegExp('^=end', 'gm'),      css: 'comment' }, // one line comments
    // { regex: dp.sh.RegexLib.DoubleQuotedString,        css: 'string' },  // double quoted strings
    // { regex: dp.sh.RegexLib.SingleQuotedString,        css: 'string' },  // single quoted strings
    // { regex: new RegExp(':[a-z][A-Za-z0-9_]*', 'g'),   css: 'symbol' },  // symbols
    // { regex: new RegExp('(\\$|@@|@)\\w+', 'g'),        css: 'variable' },  // $global, @instance, and @@class variables
    // { regex: new RegExp(this.GetKeywords(keywords), 'gm'), css: 'keyword' }, // keywords
    // { regex: new RegExp('\s*include', 'gm'), css: 'keyword' }, // keywords
    // { regex: new RegExp(this.GetKeywords(builtins), 'gm'), css: 'builtin' }  // builtins
    {regex: new RegExp('.*\/$', 'gm'), css: 'keyword'}
		];

	this.CssClass = 'dp-fs';
}

dp.sh.Brushes.Fs.prototype = new dp.sh.Highlighter();
dp.sh.Brushes.Fs.Aliases = ['fs', 'file_system', 'cl', 'text'];
