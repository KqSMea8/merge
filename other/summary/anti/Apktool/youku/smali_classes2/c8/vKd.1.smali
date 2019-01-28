.class public final Lc8/vKd;
.super Ljava/lang/Object;
.source "PlatformMessageSender.java"

# interfaces
.implements Lc8/yKd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zKd;->sendUnRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$unRegisterStatus:Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lc8/vKd;->val$unRegisterStatus:Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicStatus()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lc8/vKd;->val$unRegisterStatus:Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    return-object v0
.end method

.method public getBasicStatusExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "extra_app_push_un_register_status"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "un_register_status"

    return-object v0
.end method
