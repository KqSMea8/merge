.class public interface abstract Lc8/irb;
.super Ljava/lang/Object;
.source "IWXAudio.java"


# static fields
.field public static final CAN_PLAY_TYPE_MAYBE:Ljava/lang/String; = "maybe"

.field public static final CAN_PLAY_TYPE_NONE:Ljava/lang/String; = ""

.field public static final CAN_PLAY_TYPE_PROBABLY:Ljava/lang/String; = "probably"

.field public static final KEY_AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"

.field public static final KEY_ENDED:Ljava/lang/String; = "ended"

.field public static final KEY_ERR_CODE:Ljava/lang/String; = "code"

.field public static final KEY_ERR_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_LOOP:Ljava/lang/String; = "loop"

.field public static final KEY_PAUSED:Ljava/lang/String; = "paused"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_VALUE:Ljava/lang/String; = "value"

.field public static final KEY_VOLUME:Ljava/lang/String; = "volume"

.field public static final MEDIA_ERR_ABORTED:Ljava/lang/String; = "1"

.field public static final MEDIA_ERR_DECODE:Ljava/lang/String; = "3"

.field public static final MEDIA_ERR_NETWORK:Ljava/lang/String; = "2"

.field public static final MEDIA_ERR_OTHER:Ljava/lang/String; = "5"

.field public static final MEDIA_ERR_SRC_NOT_SUPPORTED:Ljava/lang/String; = "4"

.field public static final MEDIA_STATUS_ENDED:I = 0x5

.field public static final MEDIA_STATUS_ERROR:I = 0x6

.field public static final MEDIA_STATUS_INIT:I = 0x1

.field public static final MEDIA_STATUS_PAUSE:I = 0x4

.field public static final MEDIA_STATUS_PLAYING:I = 0x3

.field public static final MEDIA_STATUS_READY:I = 0x2


# virtual methods
.method public abstract canPlayType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract load(Ljava/util/Map;Lc8/EWf;)V
    .param p2    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation
.end method

.method public abstract pause(Ljava/lang/Long;)V
.end method

.method public abstract play(Ljava/lang/Long;)V
.end method

.method public abstract seek(Ljava/lang/Long;I)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop(Ljava/lang/Long;)V
.end method
