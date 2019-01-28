.class public Lc8/rqb;
.super Ljava/lang/Object;
.source "GeolocationModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tqb;->clearWatch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tqb;

.field final synthetic val$registerID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/tqb;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tqb;

    .prologue
    .line 100
    iput-object p1, p0, Lc8/rqb;->this$0:Lc8/tqb;

    iput-object p2, p0, Lc8/rqb;->val$registerID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lc8/rqb;->this$0:Lc8/tqb;

    invoke-static {v0}, Lc8/tqb;->access$100(Lc8/tqb;)Lc8/sub;

    move-result-object v0

    iget-object v1, p0, Lc8/rqb;->val$registerID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/sub;->clearWatch(Ljava/lang/String;)V

    .line 104
    return-void
.end method
