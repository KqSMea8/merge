.class public final Lc8/bDd;
.super Ljava/lang/Object;
.source "LogProcessor.java"

# interfaces
.implements Lc8/SDd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cDd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/cDd;

.field private b:Lc8/nDd;


# direct methods
.method constructor <init>(Lc8/cDd;Lc8/nDd;)V
    .locals 0

    iput-object p1, p0, Lc8/bDd;->a:Lc8/cDd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc8/bDd;->b:Lc8/nDd;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc8/bDd;->b:Lc8/nDd;

    iget-object v1, p0, Lc8/bDd;->a:Lc8/cDd;

    invoke-virtual {v1}, Lc8/cDd;->b()I

    move-result v1

    invoke-static {v1}, Lc8/iGd;->a(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/nDd;->b(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
