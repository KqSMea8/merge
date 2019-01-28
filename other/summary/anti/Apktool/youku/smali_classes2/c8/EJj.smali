.class public Lc8/EJj;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HJj;->onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HJj;

.field final synthetic val$inputStream:Lc8/PM;


# direct methods
.method constructor <init>(Lc8/HJj;Lc8/PM;)V
    .locals 0
    .param p1, "this$0"    # Lc8/HJj;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/EJj;->this$0:Lc8/HJj;

    iput-object p2, p0, Lc8/EJj;->val$inputStream:Lc8/PM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lc8/EJj;->this$0:Lc8/HJj;

    iget-object v1, p0, Lc8/EJj;->val$inputStream:Lc8/PM;

    invoke-static {v0, v1}, Lc8/HJj;->access$100(Lc8/HJj;Lc8/PM;)V

    .line 68
    return-void
.end method
