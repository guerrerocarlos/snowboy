# This file was automatically generated by SWIG (http://www.swig.org).
# Version 3.0.10
#
# Do not make changes to this file unless you know what you are doing--modify
# the SWIG interface file instead.

package Snowboy;
use base qw(Exporter);
use base qw(DynaLoader);
package Snowboyc;
bootstrap Snowboy;
package Snowboy;
@EXPORT = qw();

# ---------- BASE METHODS -------------

package Snowboy;

sub TIEHASH {
    my ($classname,$obj) = @_;
    return bless $obj, $classname;
}

sub CLEAR { }

sub FIRSTKEY { }

sub NEXTKEY { }

sub FETCH {
    my ($self,$field) = @_;
    my $member_func = "swig_${field}_get";
    $self->$member_func();
}

sub STORE {
    my ($self,$field,$newval) = @_;
    my $member_func = "swig_${field}_set";
    $self->$member_func($newval);
}

sub this {
    my $ptr = shift;
    return tied(%$ptr);
}


# ------- FUNCTION WRAPPERS --------

package Snowboy;


############# Class : Snowboy::SnowboyDetect ##############

package Snowboy::SnowboyDetect;
use vars qw(@ISA %OWNER %ITERATORS %BLESSEDMEMBERS);
@ISA = qw( Snowboy );
%OWNER = ();
%ITERATORS = ();
sub new {
    my $pkg = shift;
    my $self = Snowboyc::new_SnowboyDetect(@_);
    bless $self, $pkg if defined($self);
}

*Reset = *Snowboyc::SnowboyDetect_Reset;
*RunDetection = *Snowboyc::SnowboyDetect_RunDetection;
*SetSensitivity = *Snowboyc::SnowboyDetect_SetSensitivity;
*GetSensitivity = *Snowboyc::SnowboyDetect_GetSensitivity;
*SetAudioGain = *Snowboyc::SnowboyDetect_SetAudioGain;
*UpdateModel = *Snowboyc::SnowboyDetect_UpdateModel;
*NumHotwords = *Snowboyc::SnowboyDetect_NumHotwords;
*ApplyFrontend = *Snowboyc::SnowboyDetect_ApplyFrontend;
*SampleRate = *Snowboyc::SnowboyDetect_SampleRate;
*NumChannels = *Snowboyc::SnowboyDetect_NumChannels;
*BitsPerSample = *Snowboyc::SnowboyDetect_BitsPerSample;
sub DESTROY {
    return unless $_[0]->isa('HASH');
    my $self = tied(%{$_[0]});
    return unless defined $self;
    delete $ITERATORS{$self};
    if (exists $OWNER{$self}) {
        Snowboyc::delete_SnowboyDetect($self);
        delete $OWNER{$self};
    }
}

sub DISOWN {
    my $self = shift;
    my $ptr = tied(%$self);
    delete $OWNER{$ptr};
}

sub ACQUIRE {
    my $self = shift;
    my $ptr = tied(%$self);
    $OWNER{$ptr} = 1;
}


# ------- VARIABLE STUBS --------

package Snowboy;

1;