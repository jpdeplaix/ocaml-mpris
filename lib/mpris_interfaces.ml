(* File auto-generated by obus-gen-interface, DO NOT EDIT. *)
open OBus_value
open OBus_value.C
open OBus_member
open OBus_object
module Org_mpris_MediaPlayer2 =
struct
  let interface = "org.mpris.MediaPlayer2"
  let m_Quit = {
    Method.interface = interface;
    Method.member = "Quit";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_Raise = {
    Method.interface = interface;
    Method.member = "Raise";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let p_CanQuit = {
    Property.interface = interface;
    Property.member = "CanQuit";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanRaise = {
    Property.interface = interface;
    Property.member = "CanRaise";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanSetFullscreen = {
    Property.interface = interface;
    Property.member = "CanSetFullscreen";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_DesktopEntry = {
    Property.interface = interface;
    Property.member = "DesktopEntry";
    Property.typ = basic_string;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_Fullscreen = {
    Property.interface = interface;
    Property.member = "Fullscreen";
    Property.typ = basic_boolean;
    Property.access = Property.readable_writable;
    Property.annotations = [];
  }
  let p_HasTrackList = {
    Property.interface = interface;
    Property.member = "HasTrackList";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_Identity = {
    Property.interface = interface;
    Property.member = "Identity";
    Property.typ = basic_string;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_SupportedMimeTypes = {
    Property.interface = interface;
    Property.member = "SupportedMimeTypes";
    Property.typ = array basic_string;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_SupportedUriSchemes = {
    Property.interface = interface;
    Property.member = "SupportedUriSchemes";
    Property.typ = array basic_string;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  type 'a members = {
    m_Quit : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Raise : 'a OBus_object.t -> unit -> unit Lwt.t;
    p_CanQuit : 'a OBus_object.t -> bool React.signal;
    p_CanRaise : 'a OBus_object.t -> bool React.signal;
    p_CanSetFullscreen : 'a OBus_object.t -> bool React.signal;
    p_DesktopEntry : 'a OBus_object.t -> string React.signal;
    p_Fullscreen : ('a OBus_object.t -> bool React.signal) * ('a OBus_object.t -> bool -> unit Lwt.t);
    p_HasTrackList : 'a OBus_object.t -> bool React.signal;
    p_Identity : 'a OBus_object.t -> string React.signal;
    p_SupportedMimeTypes : 'a OBus_object.t -> string list React.signal;
    p_SupportedUriSchemes : 'a OBus_object.t -> string list React.signal;
  }
  let make members =
    OBus_object.make_interface_unsafe interface
      [
      ]
      [|
        method_info m_Quit members.m_Quit;
        method_info m_Raise members.m_Raise;
      |]
      [|
      |]
      [|
        property_r_info p_CanQuit members.p_CanQuit;
        property_r_info p_CanRaise members.p_CanRaise;
        property_r_info p_CanSetFullscreen members.p_CanSetFullscreen;
        property_r_info p_DesktopEntry members.p_DesktopEntry;
        property_rw_info p_Fullscreen (fst members.p_Fullscreen) (snd members.p_Fullscreen);
        property_r_info p_HasTrackList members.p_HasTrackList;
        property_r_info p_Identity members.p_Identity;
        property_r_info p_SupportedMimeTypes members.p_SupportedMimeTypes;
        property_r_info p_SupportedUriSchemes members.p_SupportedUriSchemes;
      |]
end
module Org_mpris_MediaPlayer2_Player =
struct
  let interface = "org.mpris.MediaPlayer2.Player"
  let m_Next = {
    Method.interface = interface;
    Method.member = "Next";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_OpenUri = {
    Method.interface = interface;
    Method.member = "OpenUri";
    Method.i_args = (arg1
                       (Some "uri", basic_string));
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_Pause = {
    Method.interface = interface;
    Method.member = "Pause";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_Play = {
    Method.interface = interface;
    Method.member = "Play";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_PlayPause = {
    Method.interface = interface;
    Method.member = "PlayPause";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_Previous = {
    Method.interface = interface;
    Method.member = "Previous";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_Seek = {
    Method.interface = interface;
    Method.member = "Seek";
    Method.i_args = (arg1
                       (Some "offset", basic_int64));
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_SetPosition = {
    Method.interface = interface;
    Method.member = "SetPosition";
    Method.i_args = (arg2
                       (Some "trackid", basic_object_path)
                       (Some "position", basic_int64));
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_Stop = {
    Method.interface = interface;
    Method.member = "Stop";
    Method.i_args = (arg0);
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let s_Seeked = {
    Signal.interface = interface;
    Signal.member = "Seeked";
    Signal.args = (arg1
                       (Some "position", basic_int64));
    Signal.annotations = [];
  }
  let p_CanControl = {
    Property.interface = interface;
    Property.member = "CanControl";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanGoNext = {
    Property.interface = interface;
    Property.member = "CanGoNext";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanGoPrevious = {
    Property.interface = interface;
    Property.member = "CanGoPrevious";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanPause = {
    Property.interface = interface;
    Property.member = "CanPause";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanPlay = {
    Property.interface = interface;
    Property.member = "CanPlay";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_CanSeek = {
    Property.interface = interface;
    Property.member = "CanSeek";
    Property.typ = basic_boolean;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_LoopStatus = {
    Property.interface = interface;
    Property.member = "LoopStatus";
    Property.typ = basic_string;
    Property.access = Property.readable_writable;
    Property.annotations = [];
  }
  let p_MaximumRate = {
    Property.interface = interface;
    Property.member = "MaximumRate";
    Property.typ = basic_double;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_Metadata = {
    Property.interface = interface;
    Property.member = "Metadata";
    Property.typ = dict string variant;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_MinimumRate = {
    Property.interface = interface;
    Property.member = "MinimumRate";
    Property.typ = basic_double;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_PlaybackStatus = {
    Property.interface = interface;
    Property.member = "PlaybackStatus";
    Property.typ = basic_string;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_Position = {
    Property.interface = interface;
    Property.member = "Position";
    Property.typ = basic_int64;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_Rate = {
    Property.interface = interface;
    Property.member = "Rate";
    Property.typ = basic_double;
    Property.access = Property.readable_writable;
    Property.annotations = [];
  }
  let p_Shuffle = {
    Property.interface = interface;
    Property.member = "Shuffle";
    Property.typ = basic_boolean;
    Property.access = Property.readable_writable;
    Property.annotations = [];
  }
  let p_Volume = {
    Property.interface = interface;
    Property.member = "Volume";
    Property.typ = basic_double;
    Property.access = Property.readable_writable;
    Property.annotations = [];
  }
  type 'a members = {
    m_Next : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_OpenUri : 'a OBus_object.t -> string -> unit Lwt.t;
    m_Pause : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Play : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_PlayPause : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Previous : 'a OBus_object.t -> unit -> unit Lwt.t;
    m_Seek : 'a OBus_object.t -> int64 -> unit Lwt.t;
    m_SetPosition : 'a OBus_object.t -> OBus_path.t * int64 -> unit Lwt.t;
    m_Stop : 'a OBus_object.t -> unit -> unit Lwt.t;
    p_CanControl : 'a OBus_object.t -> bool React.signal;
    p_CanGoNext : 'a OBus_object.t -> bool React.signal;
    p_CanGoPrevious : 'a OBus_object.t -> bool React.signal;
    p_CanPause : 'a OBus_object.t -> bool React.signal;
    p_CanPlay : 'a OBus_object.t -> bool React.signal;
    p_CanSeek : 'a OBus_object.t -> bool React.signal;
    p_LoopStatus : ('a OBus_object.t -> string React.signal) * ('a OBus_object.t -> string -> unit Lwt.t);
    p_MaximumRate : 'a OBus_object.t -> float React.signal;
    p_Metadata : 'a OBus_object.t -> (string * OBus_value.V.single) list React.signal;
    p_MinimumRate : 'a OBus_object.t -> float React.signal;
    p_PlaybackStatus : 'a OBus_object.t -> string React.signal;
    p_Position : 'a OBus_object.t -> int64 React.signal;
    p_Rate : ('a OBus_object.t -> float React.signal) * ('a OBus_object.t -> float -> unit Lwt.t);
    p_Shuffle : ('a OBus_object.t -> bool React.signal) * ('a OBus_object.t -> bool -> unit Lwt.t);
    p_Volume : ('a OBus_object.t -> float React.signal) * ('a OBus_object.t -> float -> unit Lwt.t);
  }
  let make members =
    OBus_object.make_interface_unsafe interface
      [
      ]
      [|
        method_info m_Next members.m_Next;
        method_info m_OpenUri members.m_OpenUri;
        method_info m_Pause members.m_Pause;
        method_info m_Play members.m_Play;
        method_info m_PlayPause members.m_PlayPause;
        method_info m_Previous members.m_Previous;
        method_info m_Seek members.m_Seek;
        method_info m_SetPosition members.m_SetPosition;
        method_info m_Stop members.m_Stop;
      |]
      [|
        signal_info s_Seeked;
      |]
      [|
        property_r_info p_CanControl members.p_CanControl;
        property_r_info p_CanGoNext members.p_CanGoNext;
        property_r_info p_CanGoPrevious members.p_CanGoPrevious;
        property_r_info p_CanPause members.p_CanPause;
        property_r_info p_CanPlay members.p_CanPlay;
        property_r_info p_CanSeek members.p_CanSeek;
        property_rw_info p_LoopStatus (fst members.p_LoopStatus) (snd members.p_LoopStatus);
        property_r_info p_MaximumRate members.p_MaximumRate;
        property_r_info p_Metadata members.p_Metadata;
        property_r_info p_MinimumRate members.p_MinimumRate;
        property_r_info p_PlaybackStatus members.p_PlaybackStatus;
        property_r_info p_Position members.p_Position;
        property_rw_info p_Rate (fst members.p_Rate) (snd members.p_Rate);
        property_rw_info p_Shuffle (fst members.p_Shuffle) (snd members.p_Shuffle);
        property_rw_info p_Volume (fst members.p_Volume) (snd members.p_Volume);
      |]
end
module Org_mpris_MediaPlayer2_Playlists =
struct
  let interface = "org.mpris.MediaPlayer2.Playlists"
  let m_ActivatePlaylist = {
    Method.interface = interface;
    Method.member = "ActivatePlaylist";
    Method.i_args = (arg1
                       (Some "playlist_id", basic_object_path));
    Method.o_args = (arg0);
    Method.annotations = [];
  }
  let m_GetPlaylists = {
    Method.interface = interface;
    Method.member = "GetPlaylists";
    Method.i_args = (arg4
                       (Some "index", basic_uint32)
                       (Some "max_count", basic_uint32)
                       (Some "order", basic_string)
                       (Some "reverse_order", basic_boolean));
    Method.o_args = (arg1
                       (Some "ret", array (structure (seq3 basic_object_path basic_string basic_string))));
    Method.annotations = [];
  }
  let s_PlaylistChanged = {
    Signal.interface = interface;
    Signal.member = "PlaylistChanged";
    Signal.args = (arg1
                       (Some "playlist", structure (seq3 basic_object_path basic_string basic_string)));
    Signal.annotations = [];
  }
  let p_ActivePlaylist = {
    Property.interface = interface;
    Property.member = "ActivePlaylist";
    Property.typ = structure (seq2 basic_boolean (structure (seq3 basic_object_path basic_string basic_string)));
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_Orderings = {
    Property.interface = interface;
    Property.member = "Orderings";
    Property.typ = array basic_string;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  let p_PlaylistCount = {
    Property.interface = interface;
    Property.member = "PlaylistCount";
    Property.typ = basic_uint32;
    Property.access = Property.readable;
    Property.annotations = [];
  }
  type 'a members = {
    m_ActivatePlaylist : 'a OBus_object.t -> OBus_path.t -> unit Lwt.t;
    m_GetPlaylists : 'a OBus_object.t -> int32 * int32 * string * bool -> (OBus_path.t * string * string) list Lwt.t;
    p_ActivePlaylist : 'a OBus_object.t -> (bool * (OBus_path.t * string * string)) React.signal;
    p_Orderings : 'a OBus_object.t -> string list React.signal;
    p_PlaylistCount : 'a OBus_object.t -> int32 React.signal;
  }
  let make members =
    OBus_object.make_interface_unsafe interface
      [
      ]
      [|
        method_info m_ActivatePlaylist members.m_ActivatePlaylist;
        method_info m_GetPlaylists members.m_GetPlaylists;
      |]
      [|
        signal_info s_PlaylistChanged;
      |]
      [|
        property_r_info p_ActivePlaylist members.p_ActivePlaylist;
        property_r_info p_Orderings members.p_Orderings;
        property_r_info p_PlaylistCount members.p_PlaylistCount;
      |]
end
