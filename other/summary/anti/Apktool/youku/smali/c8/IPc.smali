.class public final Lc8/IPc;
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
    .line 203
    iput-object p1, p0, Lc8/IPc;->a:Lc8/GPc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lc8/IPc;->a:Lc8/GPc;

    invoke-static {v0}, Lc8/GPc;->c(Lc8/GPc;)Lc8/FPc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lc8/IPc;->a:Lc8/GPc;

    invoke-static {v0}, Lc8/GPc;->c(Lc8/GPc;)Lc8/FPc;

    move-result-object v0

    invoke-virtual {v0}, Lc8/FPc;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
