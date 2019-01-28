.class public Lc8/wSh;
.super Ljava/lang/Object;
.source "ActionJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/BSh;->setTitleBar(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/BSh;

.field final synthetic val$activity:Lc8/Qn;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/BSh;Ljava/lang/String;Lc8/Qn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/BSh;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/wSh;->this$0:Lc8/BSh;

    iput-object p2, p0, Lc8/wSh;->val$params:Ljava/lang/String;

    iput-object p3, p0, Lc8/wSh;->val$activity:Lc8/Qn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 71
    iget-object v2, p0, Lc8/wSh;->this$0:Lc8/BSh;

    iget-object v3, p0, Lc8/wSh;->val$params:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/BSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "isShow"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lc8/wSh;->val$activity:Lc8/Qn;

    invoke-virtual {v2}, Lc8/Qn;->getSupportActionBar()Lc8/mn;

    move-result-object v2

    invoke-virtual {v2}, Lc8/mn;->show()V

    .line 77
    :goto_0
    const-string/jumbo v2, "titleText"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lc8/wSh;->val$activity:Lc8/Qn;

    invoke-virtual {v2, v1}, Lc8/Qn;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget-object v2, p0, Lc8/wSh;->val$activity:Lc8/Qn;

    check-cast v2, Lc8/FSh;

    const-string/jumbo v3, "showShare"

    .line 82
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "showCopy"

    .line 83
    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "showWeb"

    .line 84
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 81
    invoke-interface {v2, v3, v4, v5}, Lc8/FSh;->setMoreMenu(ZZZ)V

    .line 85
    return-void

    .line 75
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lc8/wSh;->val$activity:Lc8/Qn;

    invoke-virtual {v2}, Lc8/Qn;->getSupportActionBar()Lc8/mn;

    move-result-object v2

    invoke-virtual {v2}, Lc8/mn;->hide()V

    goto :goto_0
.end method
