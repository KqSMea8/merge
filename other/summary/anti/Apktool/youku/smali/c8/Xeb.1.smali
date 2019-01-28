.class public Lc8/Xeb;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lc8/Ceb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Web;
    }
.end annotation


# instance fields
.field private final copies:Lc8/Rdb;

.field private final name:Ljava/lang/String;

.field private final offset:Lc8/Rdb;

.field private final transform:Lc8/teb;


# direct methods
.method constructor <init>(Ljava/lang/String;Lc8/Rdb;Lc8/Rdb;Lc8/teb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "copies"    # Lc8/Rdb;
    .param p3, "offset"    # Lc8/Rdb;
    .param p4, "transform"    # Lc8/teb;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lc8/Xeb;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lc8/Xeb;->copies:Lc8/Rdb;

    .line 25
    iput-object p3, p0, Lc8/Xeb;->offset:Lc8/Rdb;

    .line 26
    iput-object p4, p0, Lc8/Xeb;->transform:Lc8/teb;

    .line 27
    return-void
.end method


# virtual methods
.method public getCopies()Lc8/Rdb;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lc8/Xeb;->copies:Lc8/Rdb;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Xeb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Lc8/Rdb;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Xeb;->offset:Lc8/Rdb;

    return-object v0
.end method

.method public getTransform()Lc8/teb;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/Xeb;->transform:Lc8/teb;

    return-object v0
.end method

.method public toContent(Lc8/tcb;Lc8/rfb;)Lc8/Icb;
    .locals 1
    .param p1, "drawable"    # Lc8/tcb;
    .param p2, "layer"    # Lc8/rfb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lc8/Xcb;

    invoke-direct {v0, p1, p2, p0}, Lc8/Xcb;-><init>(Lc8/tcb;Lc8/rfb;Lc8/Xeb;)V

    return-object v0
.end method
