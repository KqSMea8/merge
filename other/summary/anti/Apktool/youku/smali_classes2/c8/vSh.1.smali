.class public Lc8/vSh;
.super Ljava/lang/Object;
.source "ActionJSBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/BSh;->closeActivity(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/BSh;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/BSh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/BSh;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/vSh;->this$0:Lc8/BSh;

    iput-object p2, p0, Lc8/vSh;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 40
    :try_start_0
    iget-object v3, p0, Lc8/vSh;->this$0:Lc8/BSh;

    invoke-static {v3}, Lc8/BSh;->access$000(Lc8/BSh;)Lc8/TTh;

    move-result-object v3

    invoke-virtual {v3}, Lc8/TTh;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 41
    .local v1, "mActivity":Landroid/app/Activity;
    iget-object v3, p0, Lc8/vSh;->this$0:Lc8/BSh;

    iget-object v4, p0, Lc8/vSh;->val$params:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/BSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 42
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "result"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 43
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "mActivity":Landroid/app/Activity;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YKWeb.YoukuJSBridge"

    invoke-static {v3, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
