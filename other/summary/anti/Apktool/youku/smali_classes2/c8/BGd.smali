.class public Lc8/BGd;
.super Lc8/dHd;
.source "PushMessageProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CGd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultPushMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/CGd;


# direct methods
.method public constructor <init>(Lc8/CGd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/CGd;

    .prologue
    .line 203
    iput-object p1, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-direct {p0}, Lc8/dHd;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 208
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 209
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 230
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 231
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "platformExtra"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 240
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 241
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1, p2, p3}, Lc8/dHd;->onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "selfDefineContentString"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 331
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/dHd;->onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "selfDefineContentString"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 320
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 321
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/dHd;->onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onNotificationDeleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "selfDefineContentString"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 340
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 341
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/dHd;->onNotificationDeleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onNotifyMessageArrived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 350
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 351
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onNotifyMessageArrived(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushSwitchStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .prologue
    .line 269
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 270
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 271
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    goto :goto_0

    .line 275
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushId"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 220
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onRegister(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registerStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    .prologue
    .line 279
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 280
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 281
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    goto :goto_0

    .line 285
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subAliasStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;

    .prologue
    .line 309
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 310
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 311
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V

    goto :goto_0

    .line 315
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subTagsStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    .prologue
    .line 299
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 301
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    goto :goto_0

    .line 305
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onUnRegister(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "success"    # Z

    .prologue
    .line 249
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 251
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onUnRegister(Landroid/content/Context;Z)V

    goto :goto_0

    .line 255
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unRegisterStatus"    # Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .prologue
    .line 289
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 290
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 291
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1, p2}, Lc8/dHd;->onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    goto :goto_0

    .line 295
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method

.method public onUpdateNotificationBuilder(Lc8/XJd;)V
    .locals 4
    .param p1, "pushNotificationBuilder"    # Lc8/XJd;

    .prologue
    .line 259
    iget-object v2, p0, Lc8/BGd;->this$0:Lc8/CGd;

    invoke-static {v2}, Lc8/CGd;->access$000(Lc8/CGd;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 260
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/dHd;

    .line 261
    .local v0, "abstractAppLogicListener":Lc8/dHd;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lc8/dHd;->onUpdateNotificationBuilder(Lc8/XJd;)V

    goto :goto_0

    .line 265
    .end local v0    # "abstractAppLogicListener":Lc8/dHd;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;>;"
    :cond_1
    return-void
.end method
