.class public Lc8/Ddb;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cdb;
    }
.end annotation


# instance fields
.field private final ascent:F

.field private final family:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final style:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "style"    # Ljava/lang/String;
    .param p4, "ascent"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lc8/Ddb;->family:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lc8/Ddb;->name:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lc8/Ddb;->style:Ljava/lang/String;

    .line 16
    iput p4, p0, Lc8/Ddb;->ascent:F

    .line 17
    return-void
.end method


# virtual methods
.method public getFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/Ddb;->family:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lc8/Ddb;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Ddb;->style:Ljava/lang/String;

    return-object v0
.end method
