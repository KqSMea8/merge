.class public final Lc8/fNc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/eNc;


# direct methods
.method public constructor <init>(Lc8/eNc;)V
    .locals 0

    iput-object p1, p0, Lc8/fNc;->a:Lc8/eNc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lc8/fNc;->a:Lc8/eNc;

    .line 1000
    invoke-virtual {v0}, Lc8/eNc;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/gNc;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
