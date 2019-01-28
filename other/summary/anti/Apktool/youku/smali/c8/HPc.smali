.class public final Lc8/HPc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/GPc;


# direct methods
.method constructor <init>(Lc8/GPc;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-static {v0}, Lc8/GPc;->c(Lc8/GPc;)Lc8/FPc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lc8/HPc;->a:Lc8/GPc;

    new-instance v1, Lc8/FPc;

    iget-object v2, p0, Lc8/HPc;->a:Lc8/GPc;

    iget-object v3, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-static {v3}, Lc8/GPc;->a(Lc8/GPc;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/FPc;-><init>(Lc8/GPc;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lc8/GPc;->a(Lc8/GPc;Lc8/FPc;)Lc8/FPc;

    .line 187
    iget-object v0, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-static {v0}, Lc8/GPc;->c(Lc8/GPc;)Lc8/FPc;

    move-result-object v0

    iget-object v1, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-static {v1}, Lc8/GPc;->d(Lc8/GPc;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lc8/FPc;->setCancelable(Z)V

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-static {v0}, Lc8/GPc;->c(Lc8/GPc;)Lc8/FPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FPc;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lc8/HPc;->a:Lc8/GPc;

    invoke-static {v0}, Lc8/GPc;->c(Lc8/GPc;)Lc8/FPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FPc;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
