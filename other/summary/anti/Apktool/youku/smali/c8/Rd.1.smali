.class public Lc8/Rd;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Td;->ensurePreDrawListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Td;


# direct methods
.method constructor <init>(Lc8/Td;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Td;

    .prologue
    .line 173
    iput-object p1, p0, Lc8/Rd;->this$0:Lc8/Td;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lc8/Rd;->this$0:Lc8/Td;

    invoke-virtual {v0}, Lc8/Td;->onPreDraw()V

    .line 177
    const/4 v0, 0x1

    return v0
.end method
