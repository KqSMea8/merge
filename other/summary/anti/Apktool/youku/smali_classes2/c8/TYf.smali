.class public Lc8/TYf;
.super Ljava/lang/Object;
.source "WXTextDomObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/UYf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetSpanOperation"
.end annotation


# instance fields
.field protected final end:I

.field protected final flag:I

.field protected final start:I

.field protected final what:Ljava/lang/Object;


# direct methods
.method constructor <init>(IILjava/lang/Object;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Ljava/lang/Object;

    .prologue
    .line 77
    const/16 v0, 0x11

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    .line 78
    return-void
.end method

.method constructor <init>(IILjava/lang/Object;I)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "what"    # Ljava/lang/Object;
    .param p4, "flag"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lc8/TYf;->start:I

    .line 82
    iput p2, p0, Lc8/TYf;->end:I

    .line 83
    iput-object p3, p0, Lc8/TYf;->what:Ljava/lang/Object;

    .line 84
    iput p4, p0, Lc8/TYf;->flag:I

    .line 85
    return-void
.end method


# virtual methods
.method public execute(Landroid/text/Spannable;)V
    .locals 4
    .param p1, "sb"    # Landroid/text/Spannable;

    .prologue
    .line 88
    iget-object v0, p0, Lc8/TYf;->what:Ljava/lang/Object;

    iget v1, p0, Lc8/TYf;->start:I

    iget v2, p0, Lc8/TYf;->end:I

    iget v3, p0, Lc8/TYf;->flag:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 89
    return-void
.end method
