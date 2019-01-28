.class public Lc8/ENn;
.super Ljava/lang/Object;
.source "RegisterCodec.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-direct {p0}, Lc8/ENn;->native_avcodec_register_all()V

    .line 16
    invoke-direct {p0}, Lc8/ENn;->native_av_register_all()V

    .line 17
    return-void
.end method

.method private native native_av_register_all()V
.end method

.method private native native_avcodec_register_all()V
.end method
