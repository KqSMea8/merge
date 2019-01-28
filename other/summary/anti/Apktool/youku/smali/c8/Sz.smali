.class public Lc8/Sz;
.super Ljava/lang/Object;
.source "IntentResolver.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TF;>;"
    }
.end annotation


# instance fields
.field private mCur:Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field private final mI:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Tz;


# direct methods
.method constructor <init>(Lc8/Tz;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lc8/Sz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>.IteratorWrapper;"
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    iput-object p1, p0, Lc8/Sz;->this$0:Lc8/Tz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lc8/Sz;->mI:Ljava/util/Iterator;

    .line 268
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 271
    .local p0, "this":Lc8/Sz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lc8/Sz;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lc8/Sz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lc8/Sz;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    iput-object v0, p0, Lc8/Sz;->mCur:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lc8/Sz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>.IteratorWrapper;"
    invoke-virtual {p0}, Lc8/Sz;->next()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 279
    .local p0, "this":Lc8/Sz;, "Landroid/taobao/atlas/runtime/newcomponent/IntentResolver<TF;TR;>.IteratorWrapper;"
    iget-object v0, p0, Lc8/Sz;->mCur:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lc8/Sz;->this$0:Lc8/Tz;

    iget-object v1, p0, Lc8/Sz;->mCur:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Lc8/Tz;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lc8/Sz;->mI:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 283
    return-void
.end method
