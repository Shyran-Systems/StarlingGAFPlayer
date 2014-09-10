/**
 * Created by Nazar on 05.03.14.
 */
package com.catalystapps.gaf.display
{
	/**
	 * @private
	 */
	public interface IGAFImage extends IGAFDisplayObject
	{
		function get assetTexture(): IGAFTexture;
		function invalidateSize(): void;
	}
}
