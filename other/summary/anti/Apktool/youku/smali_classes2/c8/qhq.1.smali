.class public Lc8/qhq;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lc8/yhq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/shq;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/shq;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$methodInfo:Lc8/vhq;


# direct methods
.method constructor <init>(Lc8/shq;Lc8/vhq;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Lc8/shq;

    .prologue
    .line 263
    iput-object p1, p0, Lc8/qhq;->this$1:Lc8/shq;

    iput-object p2, p0, Lc8/qhq;->val$methodInfo:Lc8/vhq;

    iput-object p3, p0, Lc8/qhq;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lc8/fhq;)Lc8/khq;
    .locals 3
    .param p1, "requestInterceptor"    # Lc8/fhq;

    .prologue
    .line 265
    iget-object v0, p0, Lc8/qhq;->this$1:Lc8/shq;

    iget-object v1, p0, Lc8/qhq;->val$methodInfo:Lc8/vhq;

    iget-object v2, p0, Lc8/qhq;->val$args:[Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lc8/shq;->access$100(Lc8/shq;Lc8/fhq;Lc8/vhq;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/khq;

    return-object v0
.end method
