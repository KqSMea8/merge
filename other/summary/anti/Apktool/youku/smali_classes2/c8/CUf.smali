.class public Lc8/CUf;
.super Ljava/lang/Object;
.source "HotPatchOrangeReceiver.java"


# static fields
.field private static final CLEAR_PATCH:Ljava/lang/String; = "clear_patch"

.field private static final FORBID_MODE:Ljava/lang/String; = "forbid_patch"

.field private static final NAME:Ljava/lang/String; = "android_hotpatch_configcenter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android_hotpatch_configcenter"

    aput-object v2, v0, v1

    .line 25
    .local v0, "groupNames":[Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    new-instance v2, Lc8/BUf;

    invoke-direct {v2}, Lc8/BUf;-><init>()V

    invoke-virtual {v1, v0, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 49
    return-void
.end method
