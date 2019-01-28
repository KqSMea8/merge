.class public final Lc8/TOc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lc8/SOc;


# direct methods
.method constructor <init>(Lc8/SOc;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lc8/TOc;->c:Lc8/SOc;

    iput-object p2, p0, Lc8/TOc;->a:Landroid/content/Context;

    iput-object p3, p0, Lc8/TOc;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lc8/TOc;->a:Landroid/content/Context;

    iget-object v1, p0, Lc8/TOc;->b:Ljava/util/HashMap;

    .line 1034
    invoke-static {v0, v1}, Lc8/SOc;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 272
    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    .line 1272
    iget-object v0, p0, Lc8/TOc;->a:Landroid/content/Context;

    iget-object v1, p0, Lc8/TOc;->b:Ljava/util/HashMap;

    .line 2034
    invoke-static {v0, v1}, Lc8/SOc;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 268
    return-object v0
.end method
