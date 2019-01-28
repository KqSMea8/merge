.class public Lc8/kvk;
.super Ljava/lang/Object;
.source "FollowReceiver.java"

# interfaces
.implements Lc8/Xuk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/follow/receiver/FollowReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/follow/receiver/FollowReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/youku/phone/follow/receiver/FollowReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/phone/follow/receiver/FollowReceiver;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lc8/kvk;->this$0:Lcom/youku/phone/follow/receiver/FollowReceiver;

    iput-object p2, p0, Lc8/kvk;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V
    .locals 0
    .param p1, "errorCode"    # Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    .prologue
    .line 66
    return-void
.end method

.method public onMergeFavoriteSuccess()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lc8/kvk;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_merge_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method
