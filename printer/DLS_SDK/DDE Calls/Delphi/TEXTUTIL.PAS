unit Textutil;

(*
 TEXTUTIL.PAS

 This unit implements some general purpose text manipulation functions for
 the DDE Demo program.

 Written 1/97 by David Block
 Reviewed 4/99 by Natalya Chernokozova

 This code was written and tested using Delphi 3.0, under Windows 95.

 Copyright 1996,97,99 Dymo-CoStar Corporation

 Permission to use, copy, modify, and distribute this software for any
 purpose and without fee is hereby granted.
*)

interface

Function LineCount(const s: String) : Integer;
Function GetLine(const s : String; nLine : Integer) : String;
function LTrim(const s: String): String;
function RTrim(const s: String): String;
function Trim(const s: String) : String;


implementation
const
	SPACE = chr($20);
	TAB = chr($09);
	PIPE = '|';
	LF = chr($0a);
	FF = chr($0c);
	CR = chr($0d);

function LTrim(const s: String): String;
{
Remove leading whitespace from a string.
Whitespace is defined as blanks or tabs.
}
var
  i:       Word;

begin
	i := 1;
	{Skip all leading whitespace characters.}
	while (s[i] in [SPACE,TAB]) and
		(i <= Length(s)) do Inc(i);
	{Return the rest of the string.}
	LTrim := copy(s, i, 255);
end;

function RTrim(const s: String): String;
{
Remove trailing whitespace from a string.
Whitespace is defined as blank, tab,
carriage return, line feed or form feed.
}
var
  i:       Word;

begin
	i := Length(s);
	{Skip all trailing whitespace characters.}
	while (s[i] in [SPACE, TAB, LF, FF, CR]) and
		(i > 0) do Dec(i);
	{Return the rest of the string.}
	RTrim := copy(s, 1, i);
end;

function Trim(const s: String) : String;
{
	Remove leading and trailing whitespace }
begin
	Result := LTrim(RTrim(s));
End;

{ Passed a string with lines delimited by PIPE's, return the number of lines in
  the string.}
Function LineCount(const s: String) : Integer;
var
	n : Integer;
Begin
	if RTrim(s) = '' then
	Begin
		result := 0;
		exit;
	end;
	Result := 1;
	for n := 1 to Length(s) do
		if s[n] = PIPE then Inc(Result);
End;

{ Return the nLine'th line fron the string s }
Function GetLine(const s : String; nLine : Integer) : String;
var
	nStart, nEnd : Integer;
Begin
	nStart := 1;
	Dec(nLine);
	while nLine > 0 do
	Begin
		while (s[nStart] <> PIPE)  and (nStart <= Length(s)) do	{ Skip to next line }
			Inc(nStart);
		if (s[nStart] = PIPE) then
			Inc(nStart);				{ Skip the pipe }
		Dec(nLine);
	End;
	nEnd := nStart;	{ find next line or end of string}
	while (s[nEnd] <> PIPE) and (nEnd <= Length(s)) do
		Inc(nEnd);

	Result := Copy(s, nStart, nEnd-nStart);	{Return the requested line}
End;

end.
