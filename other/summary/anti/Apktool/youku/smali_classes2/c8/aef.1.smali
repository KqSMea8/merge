.class public final Lc8/aef;
.super Ljava/lang/Object;
.source "EntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "_id"


# instance fields
.field public final defaultValue:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final fullText:Z

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final projectionIndex:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "indexed"    # Z
    .param p4, "fullText"    # Z
    .param p5, "defaultValue"    # Ljava/lang/String;
    .param p6, "field"    # Ljava/lang/reflect/Field;
    .param p7, "projectionIndex"    # I

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/aef;->name:Ljava/lang/String;

    .line 516
    iput p2, p0, Lc8/aef;->type:I

    .line 517
    iput-boolean p3, p0, Lc8/aef;->indexed:Z

    .line 518
    iput-boolean p4, p0, Lc8/aef;->fullText:Z

    .line 519
    iput-object p5, p0, Lc8/aef;->defaultValue:Ljava/lang/String;

    .line 520
    iput-object p6, p0, Lc8/aef;->field:Ljava/lang/reflect/Field;

    .line 521
    iput p7, p0, Lc8/aef;->projectionIndex:I

    .line 522
    const/4 v0, 0x1

    invoke-virtual {p6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 523
    return-void
.end method


# virtual methods
.method public isId()Z
    .locals 2

    .prologue
    .line 526
    const-string/jumbo v0, "_id"

    iget-object v1, p0, Lc8/aef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
