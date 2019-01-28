.class public Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;
.super Ljava/lang/Object;
.source "ModuleConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UMg;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5c79b0c7d7e89a6bL


# instance fields
.field public clickEnable:Z

.field public exposureEnable:Z


# direct methods
.method private constructor <init>(Lc8/UMg;)V
    .locals 1
    .param p1, "builder"    # Lc8/UMg;

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->clickEnable:Z

    .line 20
    iput-boolean v0, p0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->exposureEnable:Z

    .line 23
    invoke-static {p1}, Lc8/UMg;->access$000(Lc8/UMg;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->clickEnable:Z

    .line 24
    invoke-static {p1}, Lc8/UMg;->access$100(Lc8/UMg;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->exposureEnable:Z

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Lc8/UMg;Lc8/TMg;)V
    .locals 0
    .param p1, "x0"    # Lc8/UMg;
    .param p2, "x1"    # Lc8/TMg;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;-><init>(Lc8/UMg;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clickEnable is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->clickEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nexposureEnable is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/android/ykgodviewtracker/constants/ModuleConfig;->exposureEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
