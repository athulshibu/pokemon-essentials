#===============================================================================
#
#===============================================================================
class AnimationEditor::BatchEdits < UIControls::BaseContainer
  LABEL_X      = 4
  CONTROL_X    = 143
  FIRST_LINE_Y = 0
  LINE_SPACING = 24

  LEFT_RIGHT_BUTTON_WIDTH = 20
  BUTTON_HEIGHT = 20
  BUTTON_SPACING = 4

  def initialize_controls
    label_width = CONTROL_X - LABEL_X
    ctrl_y = FIRST_LINE_Y
    ctrl_width = @width - CONTROL_X
    # Header
    add_control_at(:header, 0, ctrl_y,
                   UIControls::Label.new(@width, LINE_SPACING, @viewport, _INTL("Batch edits")))
    @controls[:header].header = true
    ctrl_y += LINE_SPACING
    # Time shifts header
    add_control_at(:time_shifts_label, LABEL_X, ctrl_y,
                   UIControls::Label.new(@width, LINE_SPACING, @viewport, _INTL("Time shifts")))
    get_control(:time_shifts_label).underlined = true
    ctrl_y += LINE_SPACING
    # Shift all particles
    add_control_at(:all_time_shift_label, LABEL_X, ctrl_y,
                   UIControls::Label.new(label_width, LINE_SPACING, @viewport, _INTL("All particles")))
    add_control_at(:all_time_shift_left, CONTROL_X, ctrl_y,
                   UIControls::Button.new(LEFT_RIGHT_BUTTON_WIDTH, BUTTON_HEIGHT, @viewport, "<"))
    add_control_at(:all_time_shift_right, CONTROL_X + LEFT_RIGHT_BUTTON_WIDTH + BUTTON_SPACING, ctrl_y,
                   UIControls::Button.new(LEFT_RIGHT_BUTTON_WIDTH, BUTTON_HEIGHT, @viewport, ">"))
    ctrl_y += LINE_SPACING
    # Shift selected particle
    add_control_at(:one_time_shift_label, LABEL_X, ctrl_y,
                   UIControls::Label.new(label_width, LINE_SPACING, @viewport, _INTL("Selected particle")))
    add_control_at(:one_time_shift_left, CONTROL_X, ctrl_y,
                   UIControls::Button.new(LEFT_RIGHT_BUTTON_WIDTH, BUTTON_HEIGHT, @viewport, "<"))
    add_control_at(:one_time_shift_right, CONTROL_X + LEFT_RIGHT_BUTTON_WIDTH + BUTTON_SPACING, ctrl_y,
                   UIControls::Button.new(LEFT_RIGHT_BUTTON_WIDTH, BUTTON_HEIGHT, @viewport, ">"))
    ctrl_y += LINE_SPACING
    # Shift selected row
    add_control_at(:row_time_shift_label, LABEL_X, ctrl_y,
                  UIControls::Label.new(label_width, LINE_SPACING, @viewport, _INTL("Selected row")))
    add_control_at(:row_time_shift_left, CONTROL_X, ctrl_y,
                  UIControls::Button.new(LEFT_RIGHT_BUTTON_WIDTH, BUTTON_HEIGHT, @viewport, "<"))
    add_control_at(:row_time_shift_right, CONTROL_X + LEFT_RIGHT_BUTTON_WIDTH + BUTTON_SPACING, ctrl_y,
                  UIControls::Button.new(LEFT_RIGHT_BUTTON_WIDTH, BUTTON_HEIGHT, @viewport, ">"))
    ctrl_y += LINE_SPACING
  end
end
