.class public Lc8/Wgq;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OkClientInstantiator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate()Lc8/Phq;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lc8/Uhq;

    invoke-direct {v0}, Lc8/Uhq;-><init>()V

    return-object v0
.end method
