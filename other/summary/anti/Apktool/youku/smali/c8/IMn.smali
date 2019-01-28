.class public Lc8/IMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MPAction"
.end annotation


# static fields
.field public static final GETAVGKEYFRAMESIZE:I = 0x6e

.field public static final GETAVGVIDEOBITRATE:I = 0x73

.field public static final GETCURRENTPOSITION:I = 0x1e

.field public static final GETDURATION:I = 0x23

.field public static final GETVIDEOCODE:I = 0x69

.field public static final GETVIDEOFRAMERATE:I = 0x78

.field public static final GETVIDEOHEIGHT:I = 0x28

.field public static final GETVIDEOWIDTH:I = 0x2d

.field public static final ISPLAYING:I = 0x32

.field public static final PAUSE:I = 0x37

.field public static final PREPARE:I = 0x3c

.field public static final PREPAREASYNC:I = 0x41

.field public static final RELEASE:I = 0x46

.field public static final RESET:I = 0x4b

.field public static final SEEKTO:I = 0x50

.field public static final SETAUDIOSTREAMTYPE:I = 0x55

.field public static final SETDATASOURCE:I = 0x5a

.field public static final START:I = 0x5f

.field public static final STOP:I = 0x64


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method private constructor <init>(Lc8/KMn;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lc8/IMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
