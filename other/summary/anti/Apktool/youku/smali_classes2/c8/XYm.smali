.class public Lc8/XYm;
.super Ljava/lang/Object;
.source "PopLayerImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZYm;->init(Landroid/content/Context;Lc8/lYb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZYm;


# direct methods
.method constructor <init>(Lc8/ZYm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ZYm;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/XYm;->this$0:Lc8/ZYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "groupId"

    iget-object v4, p0, Lc8/XYm;->this$0:Lc8/ZYm;

    const-string/jumbo v5, "groupId"

    invoke-static {v4, v5}, Lc8/ZYm;->access$000(Lc8/ZYm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "params":Ljava/lang/String;
    iget-object v3, p0, Lc8/XYm;->this$0:Lc8/ZYm;

    const-string/jumbo v4, "clicked"

    invoke-virtual {v3, v4, v2}, Lc8/ZYm;->fireEventToMasterIfExist(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v3, "PopLayerImageView.onClick:clicked."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "params":Ljava/lang/String;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "PopLayerImageView. fire event error."

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
