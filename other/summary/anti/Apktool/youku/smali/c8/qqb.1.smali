.class public Lc8/qqb;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tqb;->watchPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tqb;

.field final synthetic val$errorCallback:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;

.field final synthetic val$successCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/tqb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tqb;

    .prologue
    .line 80
    iput-object p1, p0, Lc8/qqb;->this$0:Lc8/tqb;

    iput-object p2, p0, Lc8/qqb;->val$successCallback:Ljava/lang/String;

    iput-object p3, p0, Lc8/qqb;->val$errorCallback:Ljava/lang/String;

    iput-object p4, p0, Lc8/qqb;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lc8/qqb;->this$0:Lc8/tqb;

    invoke-static {v0}, Lc8/tqb;->access$000(Lc8/tqb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lc8/qqb;->this$0:Lc8/tqb;

    invoke-static {v0}, Lc8/tqb;->access$100(Lc8/tqb;)Lc8/sub;

    move-result-object v0

    iget-object v1, p0, Lc8/qqb;->val$successCallback:Ljava/lang/String;

    iget-object v2, p0, Lc8/qqb;->val$errorCallback:Ljava/lang/String;

    iget-object v3, p0, Lc8/qqb;->val$params:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lc8/sub;->watchPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lc8/qqb;->this$0:Lc8/tqb;

    iget-object v1, p0, Lc8/qqb;->val$successCallback:Ljava/lang/String;

    iget-object v2, p0, Lc8/qqb;->val$errorCallback:Ljava/lang/String;

    iget-object v3, p0, Lc8/qqb;->val$params:Ljava/lang/String;

    const/16 v4, 0x13

    invoke-static {v0, v1, v2, v3, v4}, Lc8/tqb;->access$200(Lc8/tqb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
