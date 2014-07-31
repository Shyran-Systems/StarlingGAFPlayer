package com.catalystapps.gaf.display
{
	import flash.geom.Matrix;

	import starling.textures.Texture;

	/**
	 * @private
	 */
	public class GAFTexture implements IGAFTexture
	{
		//--------------------------------------------------------------------------
		//
		//  PUBLIC VARIABLES
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  PRIVATE VARIABLES
		//
		//--------------------------------------------------------------------------

		private var _id: String;
		private var _texture: Texture;
		private var _pivotMatrix: Matrix;

		//--------------------------------------------------------------------------
		//
		//  CONSTRUCTOR
		//
		//--------------------------------------------------------------------------

		public function GAFTexture(id: String, texture: Texture, pivotMatrix: Matrix)
		{
			this._id = id;
			this._texture = texture;
			this._pivotMatrix = pivotMatrix;
		}

		//--------------------------------------------------------------------------
		//
		//  PUBLIC METHODS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  PRIVATE METHODS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		// OVERRIDDEN METHODS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  EVENT HANDLERS
		//
		//--------------------------------------------------------------------------

		//--------------------------------------------------------------------------
		//
		//  GETTERS AND SETTERS
		//
		//--------------------------------------------------------------------------

		public function get texture(): Texture
		{
			return _texture;
		}

		public function get pivotMatrix(): Matrix
		{
			return _pivotMatrix;
		}

		public function get id(): String
		{
			return _id;
		}

		public function clone(): IGAFTexture
		{
			return new GAFTexture(_id, _texture, _pivotMatrix.clone());
		}
	}
}
