.class public Lc8/fK;
.super Ljava/lang/Object;
.source "TnetCancelable.java"

# interfaces
.implements Lc8/ZJ;


# static fields
.field public static final NULL:Lc8/fK;


# instance fields
.field private final seq:Ljava/lang/String;

.field private final spdySession:Lorg/android/spdy/SpdySession;

.field private final streamId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lc8/fK;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2}, Lc8/fK;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V

    sput-object v0, Lc8/fK;->NULL:Lc8/fK;

    return-void
.end method

.method public constructor <init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    .locals 0
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # I
    .param p3, "seq"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/fK;->spdySession:Lorg/android/spdy/SpdySession;

    .line 21
    iput p2, p0, Lc8/fK;->streamId:I

    .line 22
    iput-object p3, p0, Lc8/fK;->seq:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
