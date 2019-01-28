.class public Lc8/Nl;
.super Ljava/lang/Object;
.source "PrintHelper.java"

# interfaces
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ol;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ol;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Lc8/Ol;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ol;

    .prologue
    .line 215
    .local p0, "this":Lc8/Nl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;"
    iput-object p1, p0, Lc8/Nl;->this$0:Lc8/Ol;

    iput-object p2, p0, Lc8/Nl;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lc8/Nl;, "Landroid/support/v4/print/PrintHelper$PrintHelperImpl$2;"
    iget-object v0, p0, Lc8/Nl;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    .line 219
    return-void
.end method
