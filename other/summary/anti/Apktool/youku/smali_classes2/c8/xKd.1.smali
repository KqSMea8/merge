.class public final Lc8/xKd;
.super Ljava/lang/Object;
.source "PlatformMessageSender.java"

# interfaces
.implements Lc8/yKd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zKd;->sendSubAlias(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$subAliasStatus:Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lc8/xKd;->val$subAliasStatus:Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicStatus()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lc8/xKd;->val$subAliasStatus:Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    return-object v0
.end method

.method public getBasicStatusExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "extra_app_push_sub_alias_status"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "sub_alias_status"

    return-object v0
.end method
