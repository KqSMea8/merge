.class public Lc8/Yh;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Lc8/Oi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zh;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lc8/ei;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zh;

.field final synthetic val$listener:Lc8/ei;


# direct methods
.method constructor <init>(Lc8/Zh;Lc8/ei;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Zh;

    .prologue
    .line 538
    iput-object p1, p0, Lc8/Yh;->this$0:Lc8/Zh;

    iput-object p2, p0, Lc8/Yh;->val$listener:Lc8/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lc8/Yh;->val$listener:Lc8/ei;

    invoke-interface {v0}, Lc8/ei;->onSharedElementsReady()V

    .line 542
    return-void
.end method
