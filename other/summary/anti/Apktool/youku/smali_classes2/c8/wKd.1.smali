.class public final Lc8/wKd;
.super Ljava/lang/Object;
.source "PlatformMessageSender.java"

# interfaces
.implements Lc8/yKd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zKd;->sendSubTags(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$subTagsStatus:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lc8/wKd;->val$subTagsStatus:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicStatus()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lc8/wKd;->val$subTagsStatus:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    return-object v0
.end method

.method public getBasicStatusExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "extra_app_push_sub_tags_status"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "sub_tags_status"

    return-object v0
.end method
