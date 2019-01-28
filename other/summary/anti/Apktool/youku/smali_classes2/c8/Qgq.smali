.class public Lc8/Qgq;
.super Lc8/Vgq;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppEngine"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Vgq;-><init>(Lc8/Kgq;)V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Kgq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Kgq;

    .prologue
    .line 158
    invoke-direct {p0}, Lc8/Qgq;-><init>()V

    return-void
.end method


# virtual methods
.method defaultClient()Lc8/Ohq;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lc8/Jhq;

    invoke-direct {v0}, Lc8/Jhq;-><init>()V

    .line 161
    .local v0, "client":Lc8/Jhq;
    new-instance v1, Lc8/Pgq;

    invoke-direct {v1, p0, v0}, Lc8/Pgq;-><init>(Lc8/Qgq;Lc8/Jhq;)V

    return-object v1
.end method
