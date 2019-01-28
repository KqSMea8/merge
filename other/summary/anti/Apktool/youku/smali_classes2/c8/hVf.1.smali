.class public Lc8/hVf;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nVf;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nVf;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$exception:Ljava/lang/String;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lc8/hVf;->this$0:Lc8/nVf;

    iput-object p2, p0, Lc8/hVf;->val$function:Ljava/lang/String;

    iput-object p3, p0, Lc8/hVf;->val$exception:Ljava/lang/String;

    iput-object p4, p0, Lc8/hVf;->val$errCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1120
    iget-object v1, p0, Lc8/hVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/hVf;->this$0:Lc8/nVf;

    iget-object v1, v1, Lc8/nVf;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lc8/hVf;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    iget-object v1, p0, Lc8/hVf;->val$exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    iget-object v1, p0, Lc8/hVf;->this$0:Lc8/nVf;

    invoke-static {v1}, Lc8/nVf;->access$300(Lc8/nVf;)Lc8/NUf;

    move-result-object v1

    iget-object v2, p0, Lc8/hVf;->this$0:Lc8/nVf;

    iget-object v3, p0, Lc8/hVf;->val$errCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lc8/NUf;->onException(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method
