.class public Lc8/fN;
.super Ljava/lang/Object;
.source "ParcelableNetworkListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gN;->dispatch(BLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gN;

.field final synthetic val$arg:Ljava/lang/Object;

.field final synthetic val$tag:B


# direct methods
.method constructor <init>(Lc8/gN;BLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lc8/fN;->this$0:Lc8/gN;

    iput-byte p2, p0, Lc8/fN;->val$tag:B

    iput-object p3, p0, Lc8/fN;->val$arg:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lc8/fN;->this$0:Lc8/gN;

    iget-byte v1, p0, Lc8/fN;->val$tag:B

    iget-object v2, p0, Lc8/fN;->val$arg:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/gN;->access$000(Lc8/gN;BLjava/lang/Object;)V

    .line 60
    return-void
.end method
