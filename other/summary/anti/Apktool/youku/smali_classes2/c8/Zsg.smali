.class public Lc8/Zsg;
.super Ljava/lang/Object;
.source "CustomizedSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ctg;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/btg;

.field final synthetic b:Lc8/ctg;


# direct methods
.method constructor <init>(Lc8/ctg;Lc8/btg;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lc8/Zsg;->b:Lc8/ctg;

    iput-object p2, p0, Lc8/Zsg;->a:Lc8/btg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lc8/Zsg;->b:Lc8/ctg;

    iget-object v1, p0, Lc8/Zsg;->a:Lc8/btg;

    iget v1, v1, Lc8/btg;->c:I

    iget-object v2, p0, Lc8/Zsg;->a:Lc8/btg;

    iget-object v2, v2, Lc8/btg;->a:[B

    iget-object v3, p0, Lc8/Zsg;->a:Lc8/btg;

    iget v3, v3, Lc8/btg;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lc8/ctg;->a(I[BI)V

    .line 417
    return-void
.end method
