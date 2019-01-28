.class public Lc8/Kqb;
.super Ljava/lang/Object;
.source "WXNavigationBarModule.java"

# interfaces
.implements Lc8/Nob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mqb;->setMenuItem(Lc8/Lqb;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mqb;

.field final synthetic val$item:Lc8/Lqb;


# direct methods
.method constructor <init>(Lc8/Mqb;Lc8/Lqb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mqb;

    .prologue
    .line 118
    iput-object p1, p0, Lc8/Kqb;->this$0:Lc8/Mqb;

    iput-object p2, p0, Lc8/Kqb;->val$item:Lc8/Lqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 121
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 122
    .local v0, "msg":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "index"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lc8/Kqb;->val$item:Lc8/Lqb;

    iget-object v1, v1, Lc8/Lqb;->success:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
