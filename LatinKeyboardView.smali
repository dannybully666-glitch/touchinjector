.class public Lcom/locnet/gamekeyboard/LatinKeyboardView;
.super Landroid/inputmethodservice/KeyboardView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:F

.field private static m:Z


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Lcom/locnet/gamekeyboard/t;

.field private d:Landroid/content/Context;

.field private e:Lcom/locnet/gamekeyboard/o;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Canvas;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->g:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->h:Z

    invoke-direct {p0, p2}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->g:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->h:Z

    invoke-direct {p0, p2}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-object v0, v0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/locnet/gamekeyboard/g;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x15

    iget-object v1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-object v1, v1, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v1, p1

    iget v2, v2, Lcom/locnet/gamekeyboard/g;->s:I

    aget-object v3, v1, p1

    iget v3, v3, Lcom/locnet/gamekeyboard/g;->t:I

    mul-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v3, 0x6

    aget-object p1, v1, p1

    iget-boolean p1, p1, Lcom/locnet/gamekeyboard/g;->m:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const v1, -0xff0100

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/2addr v0, v2

    int-to-float v5, v0

    add-int/lit8 v3, v3, 0x3

    int-to-float v6, v3

    add-int/lit8 v0, v0, 0x5

    int-to-float v7, v0

    add-int/lit8 v3, v3, 0x5

    int-to-float v8, v3

    iget-object v9, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, -0x1

    sput v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->i:I

    const/16 v0, 0xbb

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->j:I

    sput v1, Lcom/locnet/gamekeyboard/LatinKeyboardView;->k:I

    :goto_0
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "keyTextColor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->i:I

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    sput v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->i:I

    goto :goto_1

    :cond_0
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "shadowColor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->j:I

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    sput v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->j:I

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "background"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->k:I

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v0

    sput v0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->k:I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static c(Lcom/locnet/gamekeyboard/t;Landroid/view/MotionEvent;II)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    if-eq v1, v2, :cond_b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_b

    const/4 v4, 0x5

    const v5, 0xff00

    if-eq v1, v4, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/locnet/gamekeyboard/t;->M()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Unknown"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    :cond_0
    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    int-to-float p2, p2

    add-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    int-to-float p3, p3

    add-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p0, p2, p1, v3, v3}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->d(Lcom/locnet/gamekeyboard/t;IIZZ)V

    goto/16 :goto_9

    :cond_1
    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    int-to-float p2, p2

    add-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto/16 :goto_8

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    array-length v4, v1

    if-ge v0, v4, :cond_3

    aget-object v4, v1, v0

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/locnet/gamekeyboard/g;->n:Z

    iput-boolean v1, v4, Lcom/locnet/gamekeyboard/g;->o:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    int-to-float v4, p2

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    int-to-float v5, p3

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {p0, v1, v4, v2, v2}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->d(Lcom/locnet/gamekeyboard/t;IIZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    array-length p3, p2

    if-ge p1, p3, :cond_7

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/locnet/gamekeyboard/g;->p()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object p2, p2, p1

    iget-boolean p2, p2, Lcom/locnet/gamekeyboard/g;->o:Z

    if-nez p2, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/locnet/gamekeyboard/t;->Q(IIIZZZ)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object p3, p2, p1

    iget p3, p3, Lcom/locnet/gamekeyboard/g;->c:I

    if-eqz p3, :cond_6

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->p:Z

    if-eqz p3, :cond_6

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->m:Z

    if-eqz p3, :cond_6

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->o:Z

    if-nez p3, :cond_6

    aget-object p2, p2, p1

    iget-boolean p2, p2, Lcom/locnet/gamekeyboard/g;->o:Z

    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    :cond_6
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_4
    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    array-length p3, p2

    if-ge p1, p3, :cond_a

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/locnet/gamekeyboard/g;->p()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object p3, p2, p1

    iget p3, p3, Lcom/locnet/gamekeyboard/g;->c:I

    if-eqz p3, :cond_9

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->p:Z

    if-eqz p3, :cond_9

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->m:Z

    if-nez p3, :cond_9

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->o:Z

    if-eqz p3, :cond_9

    aget-object p2, p2, p1

    iget-boolean p2, p2, Lcom/locnet/gamekeyboard/g;->o:Z

    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    :cond_9
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    const-wide/16 p0, 0x32

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :cond_b
    const/4 p1, 0x0

    :goto_6
    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    array-length p3, p2

    if-ge p1, p3, :cond_f

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/locnet/gamekeyboard/g;->p()Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/locnet/gamekeyboard/t;->Q(IIIZZZ)V

    goto :goto_7

    :cond_c
    iget-object p2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object p3, p2, p1

    iget p3, p3, Lcom/locnet/gamekeyboard/g;->c:I

    if-eqz p3, :cond_d

    aget-object p3, p2, p1

    iget-boolean p3, p3, Lcom/locnet/gamekeyboard/g;->p:Z

    if-eqz p3, :cond_d

    aget-object p2, p2, p1

    iget-boolean p2, p2, Lcom/locnet/gamekeyboard/g;->m:Z

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1, v3, v3, v3}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    :cond_d
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float p2, p2

    add-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_8
    int-to-float p3, p3

    add-float/2addr p1, p3

    float-to-int p1, p1

    invoke-static {p0, p2, p1, v2, v3}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->d(Lcom/locnet/gamekeyboard/t;IIZZ)V

    :catch_0
    :cond_f
    :goto_9
    return-void
.end method

.method private static d(Lcom/locnet/gamekeyboard/t;IIZZ)V
    .locals 8

    invoke-static {p0, p1, p2}, Lcom/locnet/gamekeyboard/o;->e(Lcom/locnet/gamekeyboard/t;II)Lcom/locnet/gamekeyboard/g;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/locnet/gamekeyboard/g;->p()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eqz p4, :cond_0

    iput-boolean v6, v2, Lcom/locnet/gamekeyboard/g;->o:Z

    :cond_0
    iget v1, v2, Lcom/locnet/gamekeyboard/g;->r:I

    if-eqz p3, :cond_1

    .line 1
    iget-object v3, v2, Lcom/locnet/gamekeyboard/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int v3, p1, v3

    mul-int/lit16 v3, v3, 0x100

    mul-int/lit8 v3, v3, 0x3

    div-int/2addr v3, v4

    iget-object v6, v2, Lcom/locnet/gamekeyboard/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v3, v6

    .line 2
    iget-object v6, v2, Lcom/locnet/gamekeyboard/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, p2, v6

    mul-int/lit16 v6, v6, 0x100

    mul-int/lit8 v6, v6, 0x3

    div-int/2addr v6, v4

    iget-object v2, v2, Lcom/locnet/gamekeyboard/g;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int v4, v6, v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 3
    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/locnet/gamekeyboard/t;->Q(IIIZZZ)V

    goto/16 :goto_3

    :cond_2
    iget v3, v2, Lcom/locnet/gamekeyboard/g;->c:I

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    if-eqz p4, :cond_3

    iput-boolean v6, v2, Lcom/locnet/gamekeyboard/g;->o:Z

    goto/16 :goto_3

    :cond_3
    :goto_1
    iget v2, v2, Lcom/locnet/gamekeyboard/g;->r:I

    invoke-virtual {p0, v2, p3, v7, v7}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    goto/16 :goto_3

    :cond_4
    iget v2, v2, Lcom/locnet/gamekeyboard/g;->r:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_b

    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    const/4 v3, 0x7

    const/4 v5, 0x4

    if-eq v2, v3, :cond_7

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p4, :cond_6

    iget-object v0, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v1, v0, v4

    iput-boolean v6, v1, Lcom/locnet/gamekeyboard/g;->o:Z

    aget-object v0, v0, v5

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/locnet/gamekeyboard/g;->r:I

    invoke-virtual {p0, v2, p3, v7, v7}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v5

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    iget-object v0, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v1, v0, v6

    iput-boolean v6, v1, Lcom/locnet/gamekeyboard/g;->o:Z

    aget-object v0, v0, v5

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/locnet/gamekeyboard/g;->r:I

    invoke-virtual {p0, v2, p3, v7, v7}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v5

    goto :goto_1

    :cond_9
    if-eqz p4, :cond_a

    iget-object v0, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v1, v0, v4

    iput-boolean v6, v1, Lcom/locnet/gamekeyboard/g;->o:Z

    aget-object v0, v0, v5

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/locnet/gamekeyboard/g;->r:I

    invoke-virtual {p0, v2, p3, v7, v7}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v5

    goto :goto_1

    :cond_b
    if-eqz p4, :cond_c

    iget-object v0, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v1, v0, v6

    iput-boolean v6, v1, Lcom/locnet/gamekeyboard/g;->o:Z

    aget-object v0, v0, v5

    :goto_2
    iput-boolean v6, v0, Lcom/locnet/gamekeyboard/g;->o:Z

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/locnet/gamekeyboard/g;->r:I

    invoke-virtual {p0, v2, p3, v7, v7}, Lcom/locnet/gamekeyboard/t;->T(IZZZ)V

    iget-object v2, p0, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v5

    goto :goto_1

    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method public final closing()V
    .locals 9

    iget-boolean v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->h:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lcom/locnet/gamekeyboard/t;)V
    .locals 3

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    invoke-virtual {p1}, Lcom/locnet/gamekeyboard/t;->M()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->d:Landroid/content/Context;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/locnet/gamekeyboard/t;->f:F

    sput p1, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    new-instance v1, Lcom/locnet/gamekeyboard/o;

    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    invoke-direct {v1, v2, p0, p1}, Lcom/locnet/gamekeyboard/o;-><init>(Lcom/locnet/gamekeyboard/t;Landroid/view/View;F)V

    iput-object v1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->e:Lcom/locnet/gamekeyboard/o;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    sget v1, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    const/high16 v2, 0x41700000    # 15.0f

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget v1, v1, Lcom/locnet/gamekeyboard/t;->D:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    sput-boolean p1, Lcom/locnet/gamekeyboard/LatinKeyboardView;->m:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/locnet/gamekeyboard/t;->T0:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget v0, v0, Lcom/locnet/gamekeyboard/t;->D:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->g:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->g:Landroid/graphics/Canvas;

    :cond_2
    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    sget v2, Lcom/locnet/gamekeyboard/LatinKeyboardView;->k:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->g:Landroid/graphics/Canvas;

    goto :goto_0

    :cond_3
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    sget-boolean v2, Lcom/locnet/gamekeyboard/LatinKeyboardView;->m:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    sput-boolean v9, Lcom/locnet/gamekeyboard/LatinKeyboardView;->m:Z

    :cond_4
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-boolean v3, v2, Lcom/locnet/gamekeyboard/t;->i0:Z

    if-eqz v3, :cond_c

    iget-boolean v2, v2, Lcom/locnet/gamekeyboard/t;->O:Z

    if-nez v2, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x2

    div-int/lit8 v12, v3, 0x2

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-boolean v4, v3, Lcom/locnet/gamekeyboard/t;->y0:Z

    const/high16 v13, -0x1000000

    if-eqz v4, :cond_6

    iget v3, v3, Lcom/locnet/gamekeyboard/t;->z0:I

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v12

    const/high16 v4, 0x41700000    # 15.0f

    sget v5, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    mul-float v4, v4, v5

    sub-float v4, v3, v4

    int-to-float v2, v2

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v5, v5, v6

    add-float/2addr v5, v3

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    move-object v7, v3

    move v6, v5

    move v5, v2

    goto :goto_1

    :cond_5
    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x420c0000    # 35.0f

    iget-object v5, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v12

    sget v6, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    mul-float v4, v4, v6

    sub-float v4, v5, v4

    int-to-float v2, v2

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    move v5, v2

    move-object v7, v3

    :goto_1
    const/4 v3, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-object v2, v2, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    array-length v2, v2

    :goto_2
    if-lez v2, :cond_7

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-object v4, v3, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    add-int/lit8 v2, v2, -0x1

    aget-object v5, v4, v2

    iget-boolean v3, v3, Lcom/locnet/gamekeyboard/t;->y0:Z

    invoke-virtual {v5, v0, v3, v4}, Lcom/locnet/gamekeyboard/g;->c(Landroid/graphics/Canvas;Z[Lcom/locnet/gamekeyboard/g;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-boolean v3, v2, Lcom/locnet/gamekeyboard/t;->y0:Z

    if-eqz v3, :cond_a

    iget v3, v2, Lcom/locnet/gamekeyboard/t;->z0:I

    const/4 v4, -0x1

    if-ltz v3, :cond_8

    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v10

    int-to-float v3, v12

    iget-object v4, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v5, "Tap a physical key"

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    iget v2, v2, Lcom/locnet/gamekeyboard/t;->Z0:I

    const/high16 v3, 0x41a00000    # 20.0f

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v10

    int-to-float v4, v12

    sget v5, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    mul-float v5, v5, v3

    sub-float v5, v4, v5

    iget-object v6, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v7, "Move stick to LEFT and hold 1 second"

    invoke-virtual {v0, v7, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v6, "Then make a few cycles in CLOCKWISE"

    invoke-virtual {v0, v6, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget v5, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    mul-float v5, v5, v3

    add-float/2addr v5, v4

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v4, "Tap screen when finished"

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v10

    int-to-float v4, v12

    sget v5, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    mul-float v5, v5, v3

    sub-float v5, v4, v5

    iget-object v6, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v7, "Drag icon to move"

    invoke-virtual {v0, v7, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v6, "Tap icon for options"

    invoke-virtual {v0, v6, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget v5, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    mul-float v5, v5, v3

    add-float/2addr v5, v4

    iget-object v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    const-string v4, "Tap empty area for more"

    :goto_3
    invoke-virtual {v0, v4, v2, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-boolean v2, v2, Lcom/locnet/gamekeyboard/t;->F:Z

    if-eqz v2, :cond_c

    .line 1
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-object v2, v2, Lcom/locnet/gamekeyboard/t;->j0:[Lcom/locnet/gamekeyboard/g;

    aget-object v2, v2, v9

    iget-boolean v2, v2, Lcom/locnet/gamekeyboard/g;->p:Z

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x18

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x18

    int-to-float v5, v2

    const/high16 v6, 0x41d80000    # 27.0f

    iget-object v7, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0, v8, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    invoke-direct {p0, v11, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x18

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x18

    int-to-float v5, v2

    const/high16 v6, 0x41200000    # 10.0f

    iget-object v7, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_5
    const/16 v2, 0x9

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0xa

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0xb

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0xc

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0xd

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0xe

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0xf

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0x10

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0x13

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0x14

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0x11

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    const/16 v2, 0x12

    invoke-direct {p0, v2, v0}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->a(ILandroid/graphics/Canvas;)V

    .line 2
    :cond_c
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-boolean v3, v2, Lcom/locnet/gamekeyboard/t;->i0:Z

    invoke-virtual {v2, v3}, Lcom/locnet/gamekeyboard/t;->Q0(Z)V

    sget v2, Lcom/locnet/gamekeyboard/LatinKeyboardView;->k:I

    if-eqz v2, :cond_d

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_d
    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget v0, v0, Lcom/locnet/gamekeyboard/t;->D:I

    if-eq v0, v1, :cond_e

    iget-object v1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    invoke-virtual {v0}, Lcom/locnet/gamekeyboard/t;->C()V

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget v1, v0, Lcom/locnet/gamekeyboard/t;->Z0:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    invoke-virtual {v0, v3}, Lcom/locnet/gamekeyboard/t;->W0(Z)V

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, Lcom/locnet/gamekeyboard/t;->i0:Z

    if-eqz v1, :cond_4

    iget-boolean v0, v0, Lcom/locnet/gamekeyboard/t;->y0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->e:Lcom/locnet/gamekeyboard/o;

    invoke-virtual {v0, p1}, Lcom/locnet/gamekeyboard/o;->g(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->h:Z

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->h:Z

    :goto_0
    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    invoke-static {v0, p1, v3, v3}, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c(Lcom/locnet/gamekeyboard/t;Landroid/view/MotionEvent;II)V

    .line 2
    :cond_4
    :goto_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

.method public final setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 4

    iget-object v0, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/locnet/gamekeyboard/t;->S0:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget v2, v2, Lcom/locnet/gamekeyboard/t;->D:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    iget-object v2, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iget-boolean v3, v2, Lcom/locnet/gamekeyboard/t;->i0:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    sget v3, Lcom/locnet/gamekeyboard/LatinKeyboardView;->l:F

    invoke-virtual {v2, v1, v3}, Lcom/locnet/gamekeyboard/t;->k0(IF)V

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/locnet/gamekeyboard/t;->Q0(Z)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/locnet/gamekeyboard/LatinKeyboardView;->c:Lcom/locnet/gamekeyboard/t;

    iput-boolean v0, v1, Lcom/locnet/gamekeyboard/t;->S0:Z

    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    return-void
.end method
