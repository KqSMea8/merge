.class public Lc8/DJj;
.super Ljava/lang/Object;
.source "NetworkListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HJj;->onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HJj;

.field final synthetic val$code:I

.field final synthetic val$header:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/HJj;ILjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lc8/HJj;

    .prologue
    .line 53
    iput-object p1, p0, Lc8/DJj;->this$0:Lc8/HJj;

    iput p2, p0, Lc8/DJj;->val$code:I

    iput-object p3, p0, Lc8/DJj;->val$header:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lc8/DJj;->this$0:Lc8/HJj;

    iget v1, p0, Lc8/DJj;->val$code:I

    iget-object v2, p0, Lc8/DJj;->val$header:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lc8/HJj;->access$000(Lc8/HJj;ILjava/util/Map;)V

    .line 57
    return-void
.end method
