.class public final Lc8/MKj;
.super Ljava/lang/Object;
.source "AlipayUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QKj;->checkWXAppPayValid(Landroid/app/Activity;Lc8/Ojg;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lc8/Cbp;


# direct methods
.method constructor <init>(Lc8/Cbp;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lc8/MKj;->val$dialog:Lc8/Cbp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lc8/MKj;->val$dialog:Lc8/Cbp;

    invoke-virtual {v0}, Lc8/Cbp;->dismiss()V

    .line 150
    return-void
.end method
