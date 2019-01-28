.class public abstract Lc8/Gzb;
.super Ljava/lang/Object;
.source "UTOrangeConfBiz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOrangeGroupnames()[Ljava/lang/String;
.end method

.method public onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    .locals 0
    .param p1, "aGroupname"    # Ljava/lang/String;

    .prologue
    .line 16
    return-void
.end method

.method public abstract onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
