.class public Lc8/Dpb;
.super Ljava/lang/Object;
.source "WXMask.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Epb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Epb;


# direct methods
.method constructor <init>(Lc8/Epb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Epb;

    .prologue
    .line 166
    iput-object p1, p0, Lc8/Dpb;->this$0:Lc8/Epb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lc8/Dpb;->this$0:Lc8/Epb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Epb;->access$000(Lc8/Epb;Z)V

    .line 170
    return-void
.end method
