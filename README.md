# vim-noctu-airline

## A 16-color vim-airline theme

This [vim-airline](https://github.com/vim-airline/vim-airline) theme uses the
terminal's 16 ANSI colors to style the airline and tabline. This theme ports
[noahfrederick's vim-noctu theme](https://github.com/noahfrederick/vim-noctu)
to vim airline, in order to synchronize the status line theme with the editor
theme.

## Example

Example of vim-noctu-airline and vim-noctu in a kitty terminal using the [Grape
theme](https://github.com/dexpota/kitty-themes). ![example in
terminal](images/vim-busy.png)

Example normal, insert, visual, replace and trailing whitespace bars:
![normal airline bar](images/noctu-airline-normal.png)
![insert airline bar](images/noctu-airline-insert.png)
![visual airline bar](images/noctu-airline-visual.png)
![replace airline bar](images/noctu-airline-replace.png)
![trailing whitespace airline bar](images/noctu-airline-trailing.png)

## Installation

### Manual

To install the plugin, copy `autoload` directory to your `.vim` directory.

### Using vim-plug:

``` Plug 'blazingbbq/vim-noctu-airline' ```

## Usage

Set the airline colorscheme to `noctu`:

``` let g:airline_theme='noctu' ```

