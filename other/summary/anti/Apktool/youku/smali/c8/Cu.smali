.class public Lc8/Cu;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hu;


# direct methods
.method constructor <init>(Lc8/Hu;)V
    .locals 0

    .prologue
    .line 1318
    iput-object p1, p0, Lc8/Cu;->this$0:Lc8/Hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lc8/Cu;->this$0:Lc8/Hu;

    invoke-virtual {v0}, Lc8/Hu;->clearListSelection()V

    .line 1324
    return-void
.end method
