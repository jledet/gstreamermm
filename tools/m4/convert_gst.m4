#Enums
_CONV_ENUM(Gst,AssocFlags)
_CONV_ENUM(Gst,AutoplugSelectResult)
_CONV_ENUM(Gst,BaseAudioSinkSlaveMethod)
_CONV_ENUM(Gst,BufferCopyFlags)
_CONV_ENUM(Gst,BufferFlag)
_CONV_ENUM(Gst,ClockEntryType)
_CONV_ENUM(Gst,ClockReturn)
_CONV_ENUM(Gst,ClockTime)
_CONV_ENUM(Gst,EventType)
_CONV_ENUM(Gst,FlowReturn)
_CONV_ENUM(Gst,Format)
_CONV_ENUM(Gst,IndexCertainty)
_CONV_ENUM(Gst,IndexEntryType)
_CONV_ENUM(Gst,IndexFlags)
_CONV_ENUM(Gst,IndexLookupMethod)
_CONV_ENUM(Gst,IndexResolverMethod)
_CONV_ENUM(Gst,MessageType)
_CONV_ENUM(Gst,MixerFlags)
_CONV_ENUM(Gst,PadDirection)
_CONV_ENUM(Gst,PadLinkReturn)
_CONV_ENUM(Gst,PadPresence)
_CONV_ENUM(Gst,PluginDependencyFlags)
_CONV_ENUM(Gst,QueryType)
_CONV_ENUM(Gst,SeekFlags)
_CONV_ENUM(Gst,SeekType)
_CONV_ENUM(Gst,State)
_CONV_ENUM(Gst,StateChange)
_CONV_ENUM(Gst,StateChangeReturn)
_CONV_ENUM(Gst,TagMergeMode)
_CONV_ENUM(Gst,TaskState)
_CONV_ENUM(Gst,TunerChannelFlags)
_CONV_ENUM(Gst,URIType)

############### gstreamermm Class Conversions ######################

#Gst::Object
_CONVERSION(`GstObject*',`Glib::RefPtr<Gst::Object>',`Glib::wrap($3)')
_CONVERSION(`GstObject*',`Glib::RefPtr<const Gst::Object>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Object>&',`GstObject*',`$3->gobj()')
_CONVERSION(`Glib::RefPtr<Gst::Object>',`GstObject*',`$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::Object>&',`GstObject*',`const_cast<GstObject*>($3->gobj())')
_CONVERSION(`const Glib::RefPtr<Object>&', `GstObject*', `$3->gobj()')

#Buffer
_CONVERSION(`GstBuffer*',`Glib::RefPtr<Gst::Buffer>',`Gst::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Buffer>&',`GstBuffer*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::Buffer>&',`GstBuffer*', `const_cast<GstBuffer*>($3->gobj())')
_CONVERSION(`const Glib::RefPtr<Gst::Buffer>&',`const GstBuffer*', `$3->gobj()')
_CONVERSION(`Glib::RefPtr<Gst::Buffer>',`GstBuffer*', `$3->gobj()')

#Bus
_CONVERSION(`const Glib::RefPtr<Gst::Bus>&',`GstBus*', `$3->gobj()')
_CONVERSION(`GstBus*',`Glib::RefPtr<Gst::Bus>',`Glib::wrap($3)')

#Caps
_CONVERSION(`GstCaps*',`Glib::RefPtr<Gst::Caps>',`Glib::wrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::Caps>',`GstCaps*',`$3->gobj()')
_CONVERSION(`const Glib::RefPtr<Gst::Caps>&',`GstCaps*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::Caps>&',`GstCaps*', `const_cast<$2>($3->gobj())')
_CONVERSION(`const Glib::RefPtr<Gst::Caps>&',`const GstCaps*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::Caps>&',`const GstCaps*', `$3->gobj()')

#Clock
_CONVERSION(`GstClock*',`Glib::RefPtr<Gst::Clock>',`Glib::wrap($3)')
_CONVERSION(`GstClock*',`Glib::RefPtr<const Gst::Clock>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Clock>&',`GstClock*', `$3->gobj()')
_CONVERSION(`const Clock&',`GstClock*',`((GstClock*)(&$3))')
_CONVERSION(`Glib::RefPtr<Gst::Clock>',`GstClock*', `$3->gobj()')

#ClockID
_CONVERSION(`GstClockID',`Glib::RefPtr<Gst::ClockID>',`Glib::wrap((GstClockEntry*)($3))')
_CONVERSION(`const Glib::RefPtr<Gst::ClockID>&',`GstClockEntry*',`$3->gobj()')

#ColorBalanceChannel
_CONVERSION(`const Glib::RefPtr<ColorBalanceChannel>&',`GstColorBalanceChannel*',`$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const ColorBalanceChannel>&',`GstColorBalanceChannel*',`const_cast<GstColorBalanceChannel*>($3->gobj())')

#Element
_CONVERSION(`Glib::RefPtr<Gst::Element>',`GstElement*', `$3->gobj()')
_CONVERSION(`GstElement*',`Glib::RefPtr<Gst::Element>',`Glib::wrap($3)')
_CONVERSION(`GstElement*',`Glib::RefPtr<const Gst::Element>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Element>&',`GstElement*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::Element>&',`GstElement*', `const_cast<GstElement*>($3->gobj())')
_CONVERSION(`State&',`GstState*',`(GstState*)(&$3)')

#ElementFactory
_CONVERSION(`GstElementFactory*',`Glib::RefPtr<Gst::ElementFactory>',`Glib::wrap($3)')
_CONVERSION(`GstElementFactory*',`Glib::RefPtr<const Gst::ElementFactory>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::ElementFactory>&',`GstElementFactory*', `$3->gobj()')

#Event
_CONVERSION(`const Glib::RefPtr<Gst::Event>&',`GstEvent*', `Gst::unwrap($3)')

#Index
_CONVERSION(`GstIndex*',`Glib::RefPtr<Gst::Index>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Index>&',`GstIndex*',`$3->gobj()')
_CONVERSION(`Glib::RefPtr<Gst::Index>',`GstIndex*',`$3->gobj()')

#IndexFactory
_CONVERSION(`GstIndexFactory*',`Glib::RefPtr<Gst::IndexFactory>',`Glib::wrap($3)')

#Iterator
_CONVERSION(`GstIterator*',`Gst::Iterator<Gst::Element>',`Gst::Iterator<Gst::Element>::Iterator($3)')
_CONVERSION(`GstIterator*',`Gst::Iterator<const Gst::Element>',`Gst::Iterator<const Gst::Element>::Iterator($3)')
_CONVERSION(`GstIterator*',`Gst::Iterator<Gst::Pad>',`Gst::Iterator<Gst::Pad>::Iterator($3)')
_CONVERSION(`GstIterator*',`Gst::Iterator<const Gst::Pad>',`Gst::Iterator<const Gst::Pad>::Iterator($3)')
_CONVERSION(`GstIterator*',`Gst::IteratorBasic<const Gst::QueryTypeDefinition>',`Gst::IteratorBasic<const Gst::QueryTypeDefinition>::IteratorBasic($3)')

#Message
_CONVERSION(`GstMessage*',`Glib::RefPtr<Gst::Message>',`Gst::Message::wrap($3)')
_CONVERSION(`GstMessage*',`Glib::RefPtr<const Gst::Message>',`Gst::Message::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::Message>&',`GstMessage*', `$3->gobj()')

#Mixer
_CONVERSION(`const Glib::RefPtr<Gst::MixerOptions>&',`GstMixerOptions*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::MixerOptions>&',`GstMixerOptions*', `const_cast<$2>($3->gobj())')
_CONVERSION(`const Glib::RefPtr<Gst::MixerTrack>&',`GstMixerTrack*', `$3->gobj()')

#Pad
_CONVERSION(`GstPad*',`Glib::RefPtr<Gst::Pad>',`Glib::wrap($3)')
_CONVERSION(`GstPad*',`Glib::RefPtr<const Gst::Pad>',`Glib::wrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::Pad>',`GstPad*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<Gst::Pad>&',`GstPad*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::Pad>&',`GstPad*',`const_cast<GstPad*>($3->gobj())')

#PadTemplate
_CONVERSION(`GstPadTemplate*',`Glib::RefPtr<Gst::PadTemplate>', `Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<const Gst::PadTemplate>&',`GstPadTemplate*',`const_cast<GstPadTemplate*>($3->gobj())')

#Plugin
_CONVERSION(`const Glib::RefPtr<Gst::Plugin>&',`GstPlugin*',`$3->gobj()')
_CONVERSION(`GstPlugin*',`Glib::RefPtr<Gst::Plugin>',`Glib::wrap($3)')

#PluginFeature
_CONVERSION(`GstPluginFeature*',`Glib::RefPtr<Gst::PluginFeature>',`Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::PluginFeature>&',`GstPluginFeature*',`$3->gobj()')

#Query
_CONVERSION(`const Glib::RefPtr<Gst::Query>&',`GstQuery*', `Gst::unwrap($3)')

#Registry
_CONVERSION(`GstRegistry*',`Glib::RefPtr<Gst::Registry>', `Glib::wrap($3)')

#RingBuffer
_CONVERSION(`GstRingBuffer*',`Glib::RefPtr<Gst::RingBuffer>',`Glib::wrap($3)')
_CONVERSION(`Glib::RefPtr<Gst::RingBuffer>',`GstRingBuffer*',`Glib::unwrap($3)')

#Structure
_CONVERSION(`Gst::Structure&',`GstStructure*',`$3.gobj()')

#TagList
_CONVERSION(`const Gst::TagList&',`const GstTagList*',`$3.gobj()')
_CONVERSION(`GstTagList*',`Gst::TagList',`Glib::wrap($3, 0)')
_CONVERSION(`Gst::TagList&',`GstTagList*',`$3.gobj()')
_CONVERSION(`Gst::TagList',`GstTagList*',`$3.gobj()')

#TypeFind
_CONVERSION(`Gst::TypeFind&',`GstTypeFind*',`$3.gobj()')

############### gstreamermm Interface Conversions ######################

#TunerChannel
_CONVERSION(`GstTunerChannel*',`Glib::RefPtr<Gst::TunerChannel>', `Glib::wrap($3)')
_CONVERSION(`GstTunerChannel*',`Glib::RefPtr<const Gst::TunerChannel>', `Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::TunerChannel>&',`GstTunerChannel*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::TunerChannel>&',`GstTunerChannel*', `const_cast<GstTunerChannel*>($3->gobj())')
_CONVERSION(`Glib::RefPtr<Gst::TunerChannel>', `GstTunerChannel*', `$3->gobj()')

#TunerNorm
_CONVERSION(`GstTunerNorm*',`Glib::RefPtr<Gst::TunerNorm>', `Glib::wrap($3)')
_CONVERSION(`GstTunerNorm*',`Glib::RefPtr<const Gst::TunerNorm>', `Glib::wrap($3)')
_CONVERSION(`const Glib::RefPtr<Gst::TunerNorm>&',`GstTunerNorm*', `$3->gobj()')
_CONVERSION(`const Glib::RefPtr<const Gst::TunerNorm>&',`GstTunerNorm*', `const_cast<GstTunerNorm*>($3->gobj())')
_CONVERSION(`Glib::RefPtr<Gst::TunerNorm>', `GstTunerNorm*', `$3->gobj()')

#URIHandler
_CONVERSION(`const Glib::RefPtr<Gst::URIHandler>&',`GstURIHandler*',`$3->gobj()')

###################General Conversions############################

#Basic General Conversions
_CONVERSION(`gint64&',`gint64*',`&$3')
_CONVERSION(`guint64&',`guint64*',`&$3')
_CONVERSION(`guint*',`guint&',`*$3')
_CONVERSION(`const guint&',`guint',`$3')
_CONVERSION(`const guint32&',`guint32',`$3')
_CONVERSION(`guint8*&',`guint8**',`&$3')

#Basic Gstreamermm Conversions
_CONVERSION(`ClockTime&',`GstClockTime*',`(GstClockTime*)(&$3)')
_CONVERSION(`ClockTimeDiff',`GstClockTimeDiff',`GstClockTimeDiff($3)')
_CONVERSION(`GstClockTimeDiff',`ClockTimeDiff',`ClockTimeDiff($3)')
_CONVERSION(`ClockTimeDiff&',`GstClockTimeDiff*',`(GstClockTimeDiff*)(&$3)')
_CONVERSION(`Format&',`GstFormat*',`($2)&$3')
_CONVERSION(`GstClockTimeDiff*',`ClockTimeDiff&',`(ClockTimeDiff&)(*$3)')
_CONVERSION(`GstMixerMessageType',`Gst::MixerMessageType',`(Gst::MixerMessageType)($3)')
_CONVERSION(`const GstQueryType*',`const QueryType*',`(QueryType*)($3)')
_CONVERSION(`GstState*',`State&',`*reinterpret_cast<Gst::State*>($3)')
_CONVERSION(`GstTagFlag',`TagFlag',`(TagFlag)($3)')
_CONVERSION(`guint64',`ClockTime',`(ClockTime)($3)')
_CONVERSION(`const URIType',`const GstURIType',`(GstURIType)($3)')

#C++ Conversions
_CONVERSION(`const va_list&',`va_list',`const_cast<va_list&>($3)')

#Glibmm Conversions
_CONVERSION(`GQuark',`Glib::QueryQuark',`Glib::QueryQuark($3)')
_CONVERSION(`const Glib::QueryQuark&',`GQuark',`$3')
_CONVERSION(`Glib::StaticRecMutex&',`GStaticRecMutex*',`$3.gobj()')
_CONVERSION(`const Glib::StringArrayHandle&',`const gchar**',`const_cast<const char**>($3.data())')
_CONVERSION(`const Glib::ValueArray&',`GValueArray*',`const_cast<GValueArray*>($3.gobj())')

#String Conversions
_CONVERSION(`const std::string&',`const guchar*',`($2)($3.c_str())')
_CONVERSION(`gchar*',`const Glib::ustring&',__GCHARP_TO_USTRING)
_CONVERSION(`const gchar*',`const Glib::ustring&',__GCHARP_TO_USTRING)
_CONVERSION(`Glib::ustring&',`const guchar*', ($2)($3.c_str()))

#libxml++ Conversions
_CONVERSION(`xmlpp::Node*',`xmlNodePtr',`$3->cobj()')
_CONVERSION(`xmlpp::Node*',`GstXmlNodePtr',`$3->cobj()')
_CONVERSION(`xmlpp::Document*',`xmlDocPtr',`$3->cobj()')
