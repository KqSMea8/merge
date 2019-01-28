.class public Lc8/er;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fr;


# direct methods
.method constructor <init>(Lc8/fr;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fr;

    .prologue
    .line 334
    iput-object p1, p0, Lc8/er;->this$0:Lc8/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lc8/er;->this$0:Lc8/fr;

    invoke-virtual {v0}, Lc8/fr;->onDismiss()V

    .line 338
    return-void
.end method
