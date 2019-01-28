.class public final Lc8/UMg;
.super Ljava/lang/Object;
.source "ModuleConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clickEnable:Z

.field private exposureEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lc8/UMg;->clickEnable:Z

    .line 29
    iput-boolean v0, p0, Lc8/UMg;->exposureEnable:Z

    .line 31
    return-void
.end method

.method public static synthetic access$000(Lc8/UMg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UMg;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    iget-boolean v0, p0, Lc8/UMg;->clickEnable:Z

    return v0
.end method

.method public static synthetic access$100(Lc8/UMg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/UMg;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 27
    iget-boolean v0, p0, Lc8/UMg;->exposureEnable:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;-><init>(Lc8/UMg;Lc8/TMg;)V

    return-object v0
.end method

.method public setClickEnable(Z)Lc8/UMg;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lc8/UMg;->clickEnable:Z

    .line 35
    return-object p0
.end method

.method public setExposureEnable(Z)Lc8/UMg;
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lc8/UMg;->exposureEnable:Z

    .line 40
    return-object p0
.end method
