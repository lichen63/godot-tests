extends Control

@onready var texture_src: TextureRect = $TextureRectSrc
@onready var texture_dst: TextureRect = $TextureRectDst

func _ready() -> void:
    var src_texture = texture_src.texture
    var image = src_texture.get_image()
    var rect = Rect2(5, 5, 50, 50)
    var cropped_image = Image.create_empty(rect.size.x, rect.size.y, false, image.get_format())
    cropped_image.blit_rect(image, rect, Vector2.ZERO)
    var cropped_texture = ImageTexture.create_from_image(cropped_image)
    texture_dst.texture = cropped_texture
