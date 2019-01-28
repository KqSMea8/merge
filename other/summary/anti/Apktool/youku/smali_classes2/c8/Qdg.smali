.class public Lc8/Qdg;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vdg;->confirm(Ljava/lang/String;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vdg;

.field final synthetic val$callback:Lc8/EWf;

.field final synthetic val$okTitleFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Vdg;Lc8/EWf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lc8/Qdg;->this$0:Lc8/Vdg;

    iput-object p2, p0, Lc8/Qdg;->val$callback:Lc8/EWf;

    iput-object p3, p0, Lc8/Qdg;->val$okTitleFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lc8/Qdg;->val$callback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lc8/Qdg;->val$callback:Lc8/EWf;

    iget-object v1, p0, Lc8/Qdg;->val$okTitleFinal:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method
